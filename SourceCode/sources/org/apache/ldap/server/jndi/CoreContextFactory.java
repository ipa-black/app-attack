package org.apache.ldap.server.jndi;

import androidx.room.FtsOptions;
import java.io.File;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import javax.naming.Context;
import javax.naming.Name;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.spi.InitialContextFactory;
import org.apache.ldap.common.exception.LdapAuthenticationNotSupportedException;
import org.apache.ldap.common.exception.LdapConfigurationException;
import org.apache.ldap.common.exception.LdapNoPermissionException;
import org.apache.ldap.common.message.LockableAttributesImpl;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.util.DateUtils;
import org.apache.ldap.common.util.StringTools;
import org.apache.ldap.server.AbstractContextPartition;
import org.apache.ldap.server.ApplicationPartition;
import org.apache.ldap.server.ContextPartition;
import org.apache.ldap.server.ContextPartitionConfig;
import org.apache.ldap.server.PartitionNexus;
import org.apache.ldap.server.RootNexus;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.db.DefaultSearchEngine;
import org.apache.ldap.server.db.ExpressionEnumerator;
import org.apache.ldap.server.db.ExpressionEvaluator;
import org.apache.ldap.server.db.jdbm.JdbmDatabase;
import org.apache.ldap.server.interceptor.InterceptorChain;
import org.apache.ldap.server.interceptor.InterceptorConfigBuilder;
import org.apache.ldap.server.interceptor.InterceptorContext;
import org.apache.ldap.server.schema.AttributeTypeRegistry;
import org.apache.ldap.server.schema.GlobalRegistries;
import org.apache.ldap.server.schema.MatchingRuleRegistry;
import org.apache.ldap.server.schema.OidRegistry;
import org.apache.ldap.server.schema.bootstrap.BootstrapRegistries;
import org.apache.ldap.server.schema.bootstrap.BootstrapSchemaLoader;
/* loaded from: classes3.dex */
public class CoreContextFactory implements InitialContextFactory {
    protected static final String ADMIN = "uid=admin,ou=system";
    private static final String CREDS = "java.naming.security.credentials";
    public static final String DEFAULT_WKDIR = "server-work";
    protected static final String PRINCIPAL = "java.naming.security.principal";
    private static final String TYPE = "java.naming.security.authentication";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    protected boolean createMode;
    protected GlobalRegistries globalRegistries;
    protected Hashtable initialEnv;
    protected RootNexus nexus;
    protected JndiProvider provider = null;
    protected SystemPartition system;
    protected static final Name ADMIN_NAME = SystemPartition.getAdminDn();
    protected static final String[] DEFAULT_SCHEMAS = {"org.apache.ldap.server.schema.bootstrap.CoreSchema", "org.apache.ldap.server.schema.bootstrap.CosineSchema", "org.apache.ldap.server.schema.bootstrap.ApacheSchema", "org.apache.ldap.server.schema.bootstrap.InetorgpersonSchema", "org.apache.ldap.server.schema.bootstrap.JavaSchema", "org.apache.ldap.server.schema.bootstrap.SystemSchema"};

    public CoreContextFactory() {
        JndiProvider.setProviderOn(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setProvider(JndiProvider jndiProvider) {
        this.provider = jndiProvider;
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [org.apache.ldap.server.jndi.JndiProvider, java.util.Hashtable] */
    public Context getInitialContext(Hashtable hashtable) throws NamingException {
        ArrayList arrayList;
        Hashtable hashtable2 = (Hashtable) hashtable.clone();
        if (hashtable2.containsKey(EnvKeys.SHUTDOWN)) {
            JndiProvider jndiProvider = this.provider;
            if (jndiProvider == null) {
                return new DeadContext();
            }
            try {
                jndiProvider.shutdown();
            } finally {
                try {
                    return new DeadContext();
                } finally {
                }
            }
            return new DeadContext();
        } else if (hashtable2.containsKey(EnvKeys.SYNC)) {
            this.provider.sync();
            return this.provider.getLdapContext(hashtable2);
        } else {
            checkSecuritySettings(hashtable2);
            if (isAnonymous(hashtable2)) {
                hashtable2.put(PRINCIPAL, "");
            }
            if (this.provider == null) {
                if (isAnonymous(hashtable2) && hashtable2.containsKey(EnvKeys.DISABLE_ANONYMOUS)) {
                    throw new LdapNoPermissionException("cannot bind as anonymous on startup while disabling anonymous binds w/ property: server.disable.anonymous");
                }
                this.initialEnv = hashtable2;
                initialize();
                boolean createBootstrapEntries = createBootstrapEntries();
                this.createMode = createBootstrapEntries;
                if (createBootstrapEntries && hashtable2.containsKey(EnvKeys.TEST_ENTRIES) && (arrayList = (ArrayList) this.initialEnv.get(EnvKeys.TEST_ENTRIES)) != null) {
                    for (int i = 0; i < arrayList.size(); i++) {
                        Attributes attributes = (Attributes) arrayList.get(i);
                        attributes.put("creatorsName", "uid=admin,ou=system");
                        attributes.put("createTimestamp", DateUtils.getGeneralizedTime());
                        Attribute remove = attributes.remove("dn");
                        RootNexus rootNexus = this.nexus;
                        String str = (String) remove.get();
                        LdapName ldapName = new LdapName((String) remove.get());
                        try {
                            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                            }
                            rootNexus.add(str, ldapName, attributes);
                        } finally {
                            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                            }
                        }
                    }
                }
            }
            return this.provider.getLdapContext(hashtable2);
        }
    }

    protected void checkSecuritySettings(Hashtable hashtable) throws NamingException {
        if (hashtable.containsKey(TYPE) && hashtable.get(TYPE) != null) {
            if (hashtable.get(TYPE).equals(FtsOptions.TOKENIZER_SIMPLE)) {
                if (!hashtable.containsKey(CREDS)) {
                    throw new LdapConfigurationException("missing required java.naming.security.credentials property for simple authentication");
                }
                if (!hashtable.containsKey(PRINCIPAL)) {
                    throw new LdapConfigurationException("missing required java.naming.security.principal property for simple authentication");
                }
            } else if (hashtable.get(TYPE).equals("none")) {
                if (hashtable.containsKey(CREDS)) {
                    throw new LdapConfigurationException("ambiguous bind settings encountered where bind is anonymous yet java.naming.security.credentials property is set");
                }
                if (hashtable.containsKey(PRINCIPAL)) {
                    throw new LdapConfigurationException("ambiguous bind settings encountered where bind is anonymous yet java.naming.security.principal property is set");
                }
            } else {
                throw new LdapAuthenticationNotSupportedException(ResultCodeEnum.AUTHMETHODNOTSUPPORTED);
            }
        } else if (hashtable.containsKey(CREDS) && !hashtable.containsKey(PRINCIPAL)) {
            throw new LdapConfigurationException("credentials provided without principal name property: java.naming.security.principal");
        }
    }

    protected boolean isAnonymous(Hashtable hashtable) {
        return (!hashtable.containsKey(TYPE) || hashtable.get(TYPE) == null) ? !hashtable.containsKey(CREDS) : hashtable.get(TYPE).equals("none");
    }

    private boolean createBootstrapEntries() throws NamingException {
        boolean z;
        RootNexus rootNexus;
        RootNexus rootNexus2;
        RootNexus rootNexus3 = this.nexus;
        Name name = ADMIN_NAME;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus3 instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            if (!rootNexus3.hasEntry(name)) {
                LockableAttributesImpl lockableAttributesImpl = new LockableAttributesImpl();
                lockableAttributesImpl.put(JavaLdapSupport.OBJECTCLASS_ATTR, JavaLdapSupport.TOP_ATTR);
                lockableAttributesImpl.put(JavaLdapSupport.OBJECTCLASS_ATTR, "person");
                lockableAttributesImpl.put(JavaLdapSupport.OBJECTCLASS_ATTR, "organizationalPerson");
                lockableAttributesImpl.put(JavaLdapSupport.OBJECTCLASS_ATTR, "inetOrgPerson");
                lockableAttributesImpl.put("uid", SystemPartition.ADMIN_UID);
                lockableAttributesImpl.put("userPassword", SystemPartition.ADMIN_PW);
                lockableAttributesImpl.put("displayName", "Directory Superuser");
                lockableAttributesImpl.put("creatorsName", "uid=admin,ou=system");
                lockableAttributesImpl.put("createTimestamp", DateUtils.getGeneralizedTime());
                lockableAttributesImpl.put("displayName", "Directory Superuser");
                rootNexus = this.nexus;
                try {
                    if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                    }
                    rootNexus.add("uid=admin,ou=system", name, lockableAttributesImpl);
                    if (z && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                    }
                } finally {
                }
            }
            rootNexus = this.nexus;
            LdapName ldapName = new LdapName(SystemPartition.USERS_BASE_DN);
            try {
                if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                }
                boolean hasEntry = rootNexus.hasEntry(ldapName);
                if (z && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                }
                if (!hasEntry) {
                    LockableAttributesImpl lockableAttributesImpl2 = new LockableAttributesImpl();
                    lockableAttributesImpl2.put(JavaLdapSupport.OBJECTCLASS_ATTR, JavaLdapSupport.TOP_ATTR);
                    lockableAttributesImpl2.put(JavaLdapSupport.OBJECTCLASS_ATTR, "organizationalUnit");
                    lockableAttributesImpl2.put("ou", "users");
                    lockableAttributesImpl2.put("creatorsName", "uid=admin,ou=system");
                    lockableAttributesImpl2.put("createTimestamp", DateUtils.getGeneralizedTime());
                    rootNexus2 = this.nexus;
                    LdapName ldapName2 = new LdapName(SystemPartition.USERS_BASE_DN);
                    try {
                        if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus2 instanceof Database)) {
                            ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                        }
                        rootNexus2.add(SystemPartition.USERS_BASE_DN, ldapName2, lockableAttributesImpl2);
                        if (z && !(this instanceof ContextPartition) && !(rootNexus2 instanceof Database)) {
                            ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                        }
                    } finally {
                    }
                }
                rootNexus2 = this.nexus;
                LdapName ldapName3 = new LdapName(SystemPartition.GROUPS_BASE_DN);
                try {
                    if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus2 instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                    }
                    boolean hasEntry2 = rootNexus2.hasEntry(ldapName3);
                    if (z && !(this instanceof ContextPartition) && !(rootNexus2 instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                    }
                    if (!hasEntry2) {
                        LockableAttributesImpl lockableAttributesImpl3 = new LockableAttributesImpl();
                        lockableAttributesImpl3.put(JavaLdapSupport.OBJECTCLASS_ATTR, JavaLdapSupport.TOP_ATTR);
                        lockableAttributesImpl3.put(JavaLdapSupport.OBJECTCLASS_ATTR, "organizationalUnit");
                        lockableAttributesImpl3.put("ou", "groups");
                        lockableAttributesImpl3.put("creatorsName", "uid=admin,ou=system");
                        lockableAttributesImpl3.put("createTimestamp", DateUtils.getGeneralizedTime());
                        RootNexus rootNexus4 = this.nexus;
                        LdapName ldapName4 = new LdapName(SystemPartition.GROUPS_BASE_DN);
                        try {
                            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus4 instanceof Database)) {
                                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                            }
                            rootNexus4.add(SystemPartition.GROUPS_BASE_DN, ldapName4, lockableAttributesImpl3);
                            if (z && !(this instanceof ContextPartition) && !(rootNexus4 instanceof Database)) {
                                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                            }
                        } finally {
                            if (z && !(this instanceof ContextPartition) && !(rootNexus4 instanceof Database)) {
                                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                            }
                        }
                    }
                    RootNexus rootNexus5 = this.nexus;
                    LdapName ldapName5 = new LdapName("prefNodeName=sysPrefRoot,ou=system");
                    try {
                        if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus5 instanceof Database)) {
                            ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                        }
                        boolean hasEntry3 = rootNexus5.hasEntry(ldapName5);
                        if (z && !(this instanceof ContextPartition) && !(rootNexus5 instanceof Database)) {
                            ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                        }
                        if (hasEntry3) {
                            return false;
                        }
                        LockableAttributesImpl lockableAttributesImpl4 = new LockableAttributesImpl();
                        lockableAttributesImpl4.put(JavaLdapSupport.OBJECTCLASS_ATTR, JavaLdapSupport.TOP_ATTR);
                        lockableAttributesImpl4.put(JavaLdapSupport.OBJECTCLASS_ATTR, "prefNode");
                        lockableAttributesImpl4.put(JavaLdapSupport.OBJECTCLASS_ATTR, "extensibleObject");
                        lockableAttributesImpl4.put("prefNodeName", "sysPrefRoot");
                        lockableAttributesImpl4.put("creatorsName", "uid=admin,ou=system");
                        lockableAttributesImpl4.put("createTimestamp", DateUtils.getGeneralizedTime());
                        LdapName ldapName6 = new LdapName("prefNodeName=sysPrefRoot,ou=system");
                        RootNexus rootNexus6 = this.nexus;
                        try {
                            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus6 instanceof Database)) {
                                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                            }
                            rootNexus6.add("prefNodeName=sysPrefRoot,ou=system", ldapName6, lockableAttributesImpl4);
                            if (z && !(this instanceof ContextPartition) && !(rootNexus6 instanceof Database)) {
                                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                            }
                            return true;
                        } finally {
                            if (z && !(this instanceof ContextPartition) && !(rootNexus6 instanceof Database)) {
                                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                            }
                        }
                    } finally {
                        if (z && !(this instanceof ContextPartition) && !(rootNexus5 instanceof Database)) {
                            ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                        }
                    }
                } finally {
                    if (z && !(this instanceof ContextPartition) && !(rootNexus2 instanceof Database)) {
                        ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                    }
                }
            } finally {
                if (z && !(this instanceof ContextPartition) && !(rootNexus instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                }
            }
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(rootNexus3 instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    protected void initialize() throws NamingException {
        String str;
        BootstrapRegistries bootstrapRegistries = new BootstrapRegistries();
        BootstrapSchemaLoader bootstrapSchemaLoader = new BootstrapSchemaLoader();
        String[] strArr = DEFAULT_SCHEMAS;
        if (this.initialEnv.containsKey(EnvKeys.SCHEMAS)) {
            String[] split = StringTools.deepTrim((String) this.initialEnv.get(EnvKeys.SCHEMAS)).split(" ");
            for (int i = 0; i < split.length; i++) {
                split[i] = split[i].trim();
            }
            strArr = split;
        }
        bootstrapSchemaLoader.load(strArr, bootstrapRegistries);
        List checkRefInteg = bootstrapRegistries.checkRefInteg();
        if (!checkRefInteg.isEmpty()) {
            NamingException namingException = new NamingException();
            namingException.setRootCause((Throwable) checkRefInteg.get(0));
            throw namingException;
        }
        if (!this.initialEnv.containsKey(EnvKeys.WKDIR)) {
            str = DEFAULT_WKDIR;
        } else {
            str = ((String) this.initialEnv.get(EnvKeys.WKDIR)).trim();
        }
        File file = new File(str);
        if (file.isAbsolute()) {
            if (!file.exists()) {
                throw new NamingException(new StringBuffer("working directory ").append(str).append(" does not exist").toString());
            }
        } else {
            mkdirs(new File(".").getAbsolutePath(), str);
        }
        LdapName ldapName = new LdapName();
        ldapName.add(SystemPartition.SUFFIX);
        JdbmDatabase jdbmDatabase = new JdbmDatabase(ldapName, ldapName, str);
        AttributeTypeRegistry attributeTypeRegistry = bootstrapRegistries.getAttributeTypeRegistry();
        ExpressionEvaluator expressionEvaluator = new ExpressionEvaluator(jdbmDatabase, bootstrapRegistries.getOidRegistry(), attributeTypeRegistry);
        this.system = new SystemPartition(jdbmDatabase, new DefaultSearchEngine(jdbmDatabase, expressionEvaluator, new ExpressionEnumerator(jdbmDatabase, attributeTypeRegistry, expressionEvaluator)), new AttributeType[]{attributeTypeRegistry.lookup(AbstractContextPartition.ALIAS_OID), attributeTypeRegistry.lookup(AbstractContextPartition.EXISTANCE_OID), attributeTypeRegistry.lookup(AbstractContextPartition.HIERARCHY_OID), attributeTypeRegistry.lookup(AbstractContextPartition.NDN_OID), attributeTypeRegistry.lookup(AbstractContextPartition.ONEALIAS_OID), attributeTypeRegistry.lookup(AbstractContextPartition.SUBALIAS_OID), attributeTypeRegistry.lookup(AbstractContextPartition.UPDN_OID)});
        this.globalRegistries = new GlobalRegistries(this.system, bootstrapRegistries);
        this.nexus = new RootNexus(this.system, new LockableAttributesImpl());
        this.provider = new JndiProvider(this.nexus);
        InterceptorChain interceptorChain = (InterceptorChain) this.initialEnv.get(EnvKeys.INTERCEPTORS);
        if (interceptorChain == null) {
            interceptorChain = InterceptorChain.newDefaultChain();
        }
        Hashtable hashtable = this.initialEnv;
        interceptorChain.init(new InterceptorContext(hashtable, this.system, this.globalRegistries, this.nexus, InterceptorConfigBuilder.build(hashtable, EnvKeys.INTERCEPTORS)));
        this.provider.setInterceptor(interceptorChain);
        if (this.initialEnv.get(EnvKeys.PARTITIONS) != null) {
            startUpAppPartitions(str);
        }
    }

    protected void startUpAppPartitions(String str) throws NamingException {
        LdapName ldapName;
        ContextPartition contextPartition;
        ContextPartition contextPartition2;
        OidRegistry oidRegistry = this.globalRegistries.getOidRegistry();
        AttributeTypeRegistry attributeTypeRegistry = this.globalRegistries.getAttributeTypeRegistry();
        MatchingRuleRegistry matchingRuleRegistry = this.globalRegistries.getMatchingRuleRegistry();
        ContextPartitionConfig[] contextPartitionConfigs = PartitionConfigBuilder.getContextPartitionConfigs(this.initialEnv);
        for (int i = 0; i < contextPartitionConfigs.length; i++) {
            String stringBuffer = new StringBuffer(String.valueOf(str)).append(File.separator).append(contextPartitionConfigs[i].getId()).toString();
            mkdirs(str, contextPartitionConfigs[i].getId());
            LdapName ldapName2 = new LdapName(contextPartitionConfigs[i].getSuffix());
            LdapName ldapName3 = new LdapName((String) matchingRuleRegistry.lookup("distinguishedNameMatch").getNormalizer().normalize(contextPartitionConfigs[i].getSuffix()));
            JdbmDatabase jdbmDatabase = new JdbmDatabase(ldapName2, ldapName3, stringBuffer);
            ExpressionEvaluator expressionEvaluator = new ExpressionEvaluator(jdbmDatabase, oidRegistry, attributeTypeRegistry);
            DefaultSearchEngine defaultSearchEngine = new DefaultSearchEngine(jdbmDatabase, expressionEvaluator, new ExpressionEnumerator(jdbmDatabase, attributeTypeRegistry, expressionEvaluator));
            ArrayList arrayList = new ArrayList();
            arrayList.add(attributeTypeRegistry.lookup(AbstractContextPartition.ALIAS_OID));
            arrayList.add(attributeTypeRegistry.lookup(AbstractContextPartition.EXISTANCE_OID));
            arrayList.add(attributeTypeRegistry.lookup(AbstractContextPartition.HIERARCHY_OID));
            arrayList.add(attributeTypeRegistry.lookup(AbstractContextPartition.NDN_OID));
            arrayList.add(attributeTypeRegistry.lookup(AbstractContextPartition.ONEALIAS_OID));
            arrayList.add(attributeTypeRegistry.lookup(AbstractContextPartition.SUBALIAS_OID));
            arrayList.add(attributeTypeRegistry.lookup(AbstractContextPartition.UPDN_OID));
            int i2 = 0;
            while (i2 < contextPartitionConfigs[i].getIndices().length) {
                arrayList.add(attributeTypeRegistry.lookup(contextPartitionConfigs[i].getIndices()[i2]));
                i2++;
                defaultSearchEngine = defaultSearchEngine;
            }
            AttributeType[] attributeTypeArr = (AttributeType[]) arrayList.toArray(new AttributeType[arrayList.size()]);
            String partitionClass = contextPartitionConfigs[i].getPartitionClass();
            String properties = contextPartitionConfigs[i].getProperties();
            if (partitionClass == null) {
                contextPartition2 = new ApplicationPartition(ldapName2, ldapName3, jdbmDatabase, defaultSearchEngine, attributeTypeArr);
                ldapName = ldapName3;
            } else {
                ldapName = ldapName3;
                try {
                    Class<?> cls = Class.forName(partitionClass);
                    Class<?>[] clsArr = new Class[3];
                    Class<?> cls2 = class$0;
                    if (cls2 == null) {
                        try {
                            cls2 = Class.forName("javax.naming.Name");
                            class$0 = cls2;
                        } catch (ClassNotFoundException e2) {
                            throw new NoClassDefFoundError(e2.getMessage());
                        }
                    }
                    clsArr[0] = cls2;
                    Class<?> cls3 = class$0;
                    if (cls3 == null) {
                        try {
                            cls3 = Class.forName("javax.naming.Name");
                            class$0 = cls3;
                        } catch (ClassNotFoundException e3) {
                            throw new NoClassDefFoundError(e3.getMessage());
                        }
                    }
                    clsArr[1] = cls3;
                    Class<?> cls4 = class$1;
                    if (cls4 == null) {
                        try {
                            cls4 = Class.forName("java.lang.String");
                            class$1 = cls4;
                        } catch (ClassNotFoundException e4) {
                            throw new NoClassDefFoundError(e4.getMessage());
                        }
                    }
                    clsArr[2] = cls4;
                    contextPartition2 = (ContextPartition) cls.getConstructor(clsArr).newInstance(ldapName2, ldapName, properties);
                } catch (Exception e5) {
                    e5.printStackTrace();
                    contextPartition = null;
                }
            }
            contextPartition = contextPartition2;
            if (contextPartition != null) {
                this.nexus.register(contextPartition);
            }
            String suffix = contextPartitionConfigs[i].getSuffix();
            Attributes attributes = contextPartitionConfigs[i].getAttributes();
            try {
                if ((this instanceof Context) && !(this instanceof ContextPartition) && (contextPartition instanceof PartitionNexus) && !(contextPartition instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
                }
                contextPartition.add(suffix, ldapName, attributes);
            } finally {
                if ((this instanceof Context) && !(this instanceof ContextPartition) && (contextPartition instanceof PartitionNexus) && !(contextPartition instanceof Database)) {
                    ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
                }
            }
        }
    }

    protected boolean mkdirs(String str, String str2) {
        String[] split = str2.split("/");
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        int i = 0;
        while (i < split.length) {
            File file2 = new File(file, split[i]);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            i++;
            file = file2;
        }
        return file.exists();
    }
}
