package org.apache.ldap.server.interceptor;

import java.util.Map;
import org.apache.ldap.server.RootNexus;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.GlobalRegistries;
/* loaded from: classes3.dex */
public class InterceptorContext {
    private final Map config;
    private final Map environment;
    private final GlobalRegistries globalRegistries;
    private final RootNexus rootNexus;
    private final SystemPartition systemPartition;

    public InterceptorContext(Map map, SystemPartition systemPartition, GlobalRegistries globalRegistries, RootNexus rootNexus, Map map2) {
        this.environment = map;
        this.systemPartition = systemPartition;
        this.globalRegistries = globalRegistries;
        this.rootNexus = rootNexus;
        this.config = map2;
    }

    public Map getEnvironment() {
        return this.environment;
    }

    public Map getConfig() {
        return this.config;
    }

    public GlobalRegistries getGlobalRegistries() {
        return this.globalRegistries;
    }

    public RootNexus getRootNexus() {
        return this.rootNexus;
    }

    public SystemPartition getSystemPartition() {
        return this.systemPartition;
    }
}
