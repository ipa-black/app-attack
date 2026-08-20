.class public Lorg/apache/ldap/server/prefs/ServerSystemPreferences;
.super Ljava/util/prefs/AbstractPreferences;
.source "ServerSystemPreferences.java"


# static fields
.field private static final EMPTY_MODS:[Ljavax/naming/directory/ModificationItem;

.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field static synthetic class$0:Ljava/lang/Class;


# instance fields
.field private changes:Ljava/util/ArrayList;

.field private ctx:Ljavax/naming/ldap/LdapContext;

.field private keyToChange:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 49
    new-array v1, v0, [Ljavax/naming/directory/ModificationItem;

    sput-object v1, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->EMPTY_MODS:[Ljavax/naming/directory/ModificationItem;

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->EMPTY_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 69
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->changes:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->keyToChange:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    .line 73
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 75
    sget-object v2, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->class$0:Ljava/lang/Class;

    if-nez v2, :cond_0

    :try_start_0
    const-string v2, "org.apache.ldap.server.jndi.CoreContextFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v2, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->class$0:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.naming.factory.initial"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "java.naming.provider.url"

    const-string v3, "prefNodeName=sysPrefRoot,ou=system"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :try_start_1
    new-instance v2, Ljavax/naming/ldap/InitialLdapContext;

    invoke-direct {v2, v0, v1}, Ljavax/naming/ldap/InitialLdapContext;-><init>(Ljava/util/Hashtable;[Ljavax/naming/ldap/Control;)V

    iput-object v2, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljavax/naming/NamingException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/server/prefs/ServerSystemPreferences;Ljava/lang/String;)V
    .locals 2

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->changes:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->keyToChange:Ljava/util/HashMap;

    .line 97
    invoke-virtual {p1}, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->getLdapContext()Ljavax/naming/ldap/LdapContext;

    move-result-object p1

    .line 101
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "prefNodeName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/naming/ldap/LdapContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/ldap/LdapContext;

    iput-object p1, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Ljava/util/prefs/AbstractPreferences;->newNode:Z
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    .line 110
    :goto_0
    iget-boolean p1, p0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    if-eqz p1, :cond_0

    .line 114
    :try_start_1
    invoke-direct {p0, p2}, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->setUpNode(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljavax/naming/NamingException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method private addDelta(Ljavax/naming/directory/ModificationItem;)V
    .locals 2

    .line 338
    invoke-virtual {p1}, Ljavax/naming/directory/ModificationItem;->getAttribute()Ljavax/naming/directory/Attribute;

    move-result-object v0

    invoke-interface {v0}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->changes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->keyToChange:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->keyToChange:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    .line 350
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object p1, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->keyToChange:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setUpNode(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-direct {v0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>()V

    .line 161
    new-instance v1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    move-object v2, v0

    check-cast v2, Lorg/apache/ldap/common/Lockable;

    const-string v3, "objectClass"

    invoke-direct {v1, v2, v3}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 163
    const-string v3, "top"

    invoke-interface {v1, v3}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v3, "prefNode"

    invoke-interface {v1, v3}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v3, "extensibleObject"

    invoke-interface {v1, v3}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v0, v1}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 171
    new-instance v1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    const-string v3, "prefNodeName"

    invoke-direct {v1, v2, v3}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 173
    invoke-interface {v1, p1}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v0, v1}, Ljavax/naming/directory/Attributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    .line 177
    invoke-virtual {p0}, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->parent()Ljava/util/prefs/Preferences;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;

    invoke-virtual {v1}, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->getLdapContext()Ljavax/naming/ldap/LdapContext;

    move-result-object v1

    .line 179
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "prefNodeName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v0}, Ljavax/naming/ldap/LdapContext;->bind(Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljavax/naming/ldap/LdapContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/ldap/LdapContext;

    iput-object p1, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    const/4 p1, 0x0

    .line 183
    iput-boolean p1, p0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    return-void
.end method


# virtual methods
.method protected childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 1

    .line 416
    new-instance v0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;

    invoke-direct {v0, p0, p1}, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;-><init>(Lorg/apache/ldap/server/prefs/ServerSystemPreferences;Ljava/lang/String;)V

    return-object v0
.end method

.method protected childrenNamesSpi()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljavax/naming/ldap/LdapContext;->list(Ljava/lang/String;)Ljavax/naming/NamingEnumeration;

    move-result-object v1

    .line 277
    :goto_0
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v2
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    .line 289
    sget-object v1, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 279
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/naming/NameClassPair;

    .line 281
    invoke-virtual {v2}, Ljavax/naming/NameClassPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 286
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v1, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected flushSpi()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 207
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    const-string v1, ""

    iget-object v2, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->changes:Ljava/util/ArrayList;

    sget-object v3, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->EMPTY_MODS:[Ljavax/naming/directory/ModificationItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/naming/directory/ModificationItem;

    invoke-interface {v0, v1, v2}, Ljavax/naming/ldap/LdapContext;->modifyAttributes(Ljava/lang/String;[Ljavax/naming/directory/ModificationItem;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 216
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->keyToChange:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v1, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 196
    :cond_1
    new-instance v0, Ljava/util/prefs/BackingStoreException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Ldap context not available for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getLdapContext()Ljavax/naming/ldap/LdapContext;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    return-object v0
.end method

.method protected getSpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 365
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljavax/naming/ldap/LdapContext;->getAttributes(Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object v1

    invoke-interface {v1, p1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    .line 367
    iget-object v2, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->keyToChange:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->keyToChange:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v2, 0x0

    .line 371
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_2

    .line 373
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/directory/ModificationItem;

    .line 375
    invoke-virtual {v1}, Ljavax/naming/directory/ModificationItem;->getModificationOp()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 381
    :cond_1
    invoke-virtual {v1}, Ljavax/naming/directory/ModificationItem;->getAttribute()Ljavax/naming/directory/Attribute;

    move-result-object v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    return-object v0

    .line 391
    :cond_3
    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p1}, Ljavax/naming/NamingException;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method protected keysSpi()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljavax/naming/ldap/LdapContext;->getAttributes(Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object v1

    .line 303
    invoke-interface {v1}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object v1

    .line 305
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v2
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 322
    sget-object v1, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 307
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 309
    const-string v3, "objectClass"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "prefNodeName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 319
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v1, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 404
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    invoke-direct {v0, p1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-interface {v0, p2}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance p1, Ljavax/naming/directory/ModificationItem;

    const/4 p2, 0x2

    invoke-direct {p1, p2, v0}, Ljavax/naming/directory/ModificationItem;-><init>(ILjavax/naming/directory/Attribute;)V

    .line 410
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->addDelta(Ljavax/naming/directory/ModificationItem;)V

    return-void
.end method

.method protected removeNodeSpi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 224
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljavax/naming/ldap/LdapContext;->destroySubcontext(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    .line 233
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->keyToChange:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :catch_0
    move-exception v0

    .line 228
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v1, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected removeSpi(Ljava/lang/String;)V
    .locals 2

    .line 328
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    invoke-direct {v0, p1}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 330
    new-instance p1, Ljavax/naming/directory/ModificationItem;

    const/4 v1, 0x3

    invoke-direct {p1, v1, v0}, Ljavax/naming/directory/ModificationItem;-><init>(ILjavax/naming/directory/Attribute;)V

    .line 332
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->addDelta(Ljavax/naming/directory/ModificationItem;)V

    return-void
.end method

.method protected syncSpi()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->ctx:Ljavax/naming/ldap/LdapContext;

    const-string v1, ""

    iget-object v2, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->changes:Ljava/util/ArrayList;

    sget-object v3, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->EMPTY_MODS:[Ljavax/naming/directory/ModificationItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/naming/directory/ModificationItem;

    invoke-interface {v0, v1, v2}, Ljavax/naming/ldap/LdapContext;->modifyAttributes(Ljava/lang/String;[Ljavax/naming/directory/ModificationItem;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 263
    iget-object v0, p0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;->keyToChange:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :catch_0
    move-exception v0

    .line 258
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v1, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 243
    :cond_1
    new-instance v0, Ljava/util/prefs/BackingStoreException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Ldap context not available for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrapAsDictionary()Ljava/util/Dictionary;
    .locals 1

    .line 136
    new-instance v0, Lorg/apache/ldap/common/util/PreferencesDictionary;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/util/PreferencesDictionary;-><init>(Ljava/util/prefs/Preferences;)V

    return-object v0
.end method
