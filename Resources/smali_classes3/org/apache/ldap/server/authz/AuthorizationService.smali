.class public Lorg/apache/ldap/server/authz/AuthorizationService;
.super Lorg/apache/ldap/server/interceptor/BaseInterceptor;
.source "AuthorizationService.java"


# static fields
.field private static final ADMIN_DN:Ljavax/naming/Name;

.field private static final GROUP_BASE_DN:Ljavax/naming/Name;

.field private static final USER_BASE_DN:Ljavax/naming/Name;


# instance fields
.field private dnParser:Lorg/apache/ldap/common/name/DnParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    invoke-static {}, Lorg/apache/ldap/server/SystemPartition;->getAdminDn()Ljavax/naming/Name;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/server/authz/AuthorizationService;->ADMIN_DN:Ljavax/naming/Name;

    .line 62
    invoke-static {}, Lorg/apache/ldap/server/SystemPartition;->getUsersBaseDn()Ljavax/naming/Name;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/server/authz/AuthorizationService;->USER_BASE_DN:Ljavax/naming/Name;

    .line 67
    invoke-static {}, Lorg/apache/ldap/server/SystemPartition;->getGroupsBaseDn()Ljavax/naming/Name;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/server/authz/AuthorizationService;->GROUP_BASE_DN:Ljavax/naming/Name;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/authz/AuthorizationService;Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/SearchResult;)Z
    .locals 0

    .line 434
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/authz/AuthorizationService;->isSearchable(Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/SearchResult;)Z

    move-result p0

    return p0
.end method

.method private isSearchable(Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/SearchResult;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lorg/apache/ldap/server/authz/AuthorizationService;->dnParser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 441
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/authz/AuthorizationService;->dnParser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Ljavax/naming/directory/SearchResult;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object p2

    .line 439
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    check-cast p1, Lorg/apache/ldap/server/jndi/ServerContext;

    invoke-virtual {p1}, Lorg/apache/ldap/server/jndi/ServerContext;->getPrincipal()Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/server/authn/LdapPrincipal;->getDn()Ljavax/naming/Name;

    move-result-object p1

    .line 445
    sget-object v0, Lorg/apache/ldap/server/authz/AuthorizationService;->ADMIN_DN:Ljavax/naming/Name;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 447
    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-le p1, v1, :cond_1

    .line 449
    sget-object p1, Lorg/apache/ldap/server/authz/AuthorizationService;->USER_BASE_DN:Ljavax/naming/Name;

    invoke-interface {p2, p1}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/ldap/server/authz/AuthorizationService;->GROUP_BASE_DN:Ljavax/naming/Name;

    invoke-interface {p2, p1}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return v2

    .line 455
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 439
    monitor-exit v0

    throw p1
.end method

.method private protectDnAlterations(Lorg/apache/ldap/server/invocation/Invocation;Ljavax/naming/Name;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/exception/LdapNoPermissionException;
        }
    .end annotation

    .line 261
    invoke-static {p1}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->getPrincipal(Lorg/apache/ldap/server/invocation/Invocation;)Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/server/authn/LdapPrincipal;->getDn()Ljavax/naming/Name;

    move-result-object p1

    .line 263
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 269
    sget-object v0, Lorg/apache/ldap/server/authz/AuthorizationService;->ADMIN_DN:Ljavax/naming/Name;

    const-string v1, "User \'"

    if-eq p2, v0, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 278
    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    sget-object v2, Lorg/apache/ldap/server/authz/AuthorizationService;->USER_BASE_DN:Ljavax/naming/Name;

    invoke-interface {p2, v2}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 281
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, "\' does not have permission to move or rename the user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " account: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ". Only the admin can move or"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 283
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " rename user accounts."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 287
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result v1

    if-le v1, v3, :cond_3

    sget-object v1, Lorg/apache/ldap/server/authz/AuthorizationService;->GROUP_BASE_DN:Ljavax/naming/Name;

    invoke-interface {p2, v1}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 289
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "User "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " does not have permission to move or rename the group entry "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 291
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ".\nGroups can only be moved or renamed by the admin."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 292
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    return-void

    .line 271
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 272
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, "\' does not have permission to move or rename the admin"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " account.  No one not even the admin can move or"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " rename "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 275
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 266
    :cond_5
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    const-string p2, "The rootDSE cannot be moved or renamed!"

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private protectLookUp(Ljavax/naming/ldap/LdapContext;Ljavax/naming/Name;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 333
    check-cast p1, Lorg/apache/ldap/server/jndi/ServerContext;

    invoke-virtual {p1}, Lorg/apache/ldap/server/jndi/ServerContext;->getPrincipal()Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/server/authn/LdapPrincipal;->getDn()Ljavax/naming/Name;

    move-result-object p1

    .line 335
    sget-object v0, Lorg/apache/ldap/server/authz/AuthorizationService;->ADMIN_DN:Ljavax/naming/Name;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 337
    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result v1

    const-string v2, " for user \'"

    const-string v3, "\' not permitted"

    const/4 v4, 0x2

    const-string v5, "\'.  Only the admin can"

    if-le v1, v4, :cond_1

    sget-object v1, Lorg/apache/ldap/server/authz/AuthorizationService;->USER_BASE_DN:Ljavax/naming/Name;

    invoke-interface {p2, v1}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Access to user account \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 346
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 347
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " access user account information"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 348
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 351
    :cond_1
    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    sget-object v1, Lorg/apache/ldap/server/authz/AuthorizationService;->GROUP_BASE_DN:Ljavax/naming/Name;

    invoke-interface {p2, v1}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 359
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Access to group \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 360
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " access group information"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 362
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 365
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 368
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 374
    :cond_4
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Access to admin account not permitted for user \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 375
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " access admin account information"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 376
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    return-void
.end method

.method private protectModifyAlterations(Lorg/apache/ldap/server/invocation/Invocation;Ljavax/naming/Name;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/exception/LdapNoPermissionException;
        }
    .end annotation

    .line 190
    invoke-static {p1}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->getPrincipal(Lorg/apache/ldap/server/invocation/Invocation;)Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/server/authn/LdapPrincipal;->getDn()Ljavax/naming/Name;

    move-result-object p1

    .line 192
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 198
    sget-object v0, Lorg/apache/ldap/server/authz/AuthorizationService;->ADMIN_DN:Ljavax/naming/Name;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 200
    const-string v1, "User "

    if-eq p2, v0, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 207
    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    sget-object v0, Lorg/apache/ldap/server/authz/AuthorizationService;->USER_BASE_DN:Ljavax/naming/Name;

    invoke-interface {p2, v0}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " does not have permission to modify the account of the"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ".\nEven the owner of an account cannot"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " modify it.\nUser accounts can only be modified by the"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " administrator."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 217
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    sget-object v0, Lorg/apache/ldap/server/authz/AuthorizationService;->GROUP_BASE_DN:Ljavax/naming/Name;

    invoke-interface {p2, v0}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " does not have permission to modify the group entry "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ".\nGroups can only be modified by the admin."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 202
    :cond_3
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " does not have permission to modify the admin account."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 204
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_1
    return-void

    .line 195
    :cond_5
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    const-string p2, "The rootDSE cannot be modified!"

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getGlobalRegistries()Lorg/apache/ldap/server/schema/GlobalRegistries;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object p1

    .line 86
    new-instance v0, Lorg/apache/ldap/common/name/DnParser;

    new-instance v1, Lorg/apache/ldap/server/schema/ConcreteNameComponentNormalizer;

    invoke-direct {v1, p1}, Lorg/apache/ldap/server/schema/ConcreteNameComponentNormalizer;-><init>(Lorg/apache/ldap/server/schema/AttributeTypeRegistry;)V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/name/DnParser;-><init>(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V

    iput-object v0, p0, Lorg/apache/ldap/server/authz/AuthorizationService;->dnParser:Lorg/apache/ldap/common/name/DnParser;

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Delete;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 106
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Delete;->getName()Ljavax/naming/Name;

    move-result-object v0

    .line 107
    invoke-static {p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->getPrincipal(Lorg/apache/ldap/server/invocation/Invocation;)Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ldap/server/authn/LdapPrincipal;->getDn()Ljavax/naming/Name;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 115
    sget-object v2, Lorg/apache/ldap/server/authz/AuthorizationService;->ADMIN_DN:Ljavax/naming/Name;

    const-string v3, "User "

    if-eq v0, v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 123
    invoke-interface {v0}, Ljavax/naming/Name;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    sget-object v4, Lorg/apache/ldap/server/authz/AuthorizationService;->USER_BASE_DN:Ljavax/naming/Name;

    invoke-interface {v0, v4}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " does not have permission to delete the user account: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ". Only the admin can delete user accounts."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 132
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljavax/naming/Name;->size()I

    move-result v4

    if-le v4, v5, :cond_3

    sget-object v4, Lorg/apache/ldap/server/authz/AuthorizationService;->GROUP_BASE_DN:Ljavax/naming/Name;

    invoke-interface {v0, v4}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 135
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " does not have permission to delete the group entry: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ". Only the admin can delete groups."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 141
    :cond_3
    :goto_1
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void

    .line 117
    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " does not have permission to delete the admin account."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " No one not even the admin can delete this account!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    new-instance p2, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    invoke-direct {p2, p1}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 112
    :cond_5
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    const-string p2, "The rootDSE cannot be deleted!"

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/HasEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/HasEntry;)V

    return-void
.end method

.method public process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Invocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 97
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 413
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/List;)V

    .line 417
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/List;->getContextStack()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/ldap/LdapContext;

    .line 418
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/List;->getReturnValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/NamingEnumeration;

    .line 419
    new-instance v1, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;

    .line 420
    new-instance v2, Lorg/apache/ldap/server/authz/AuthorizationService$2;

    invoke-direct {v2, p0}, Lorg/apache/ldap/server/authz/AuthorizationService$2;-><init>(Lorg/apache/ldap/server/authz/AuthorizationService;)V

    const/4 v3, 0x0

    .line 419
    invoke-direct {v1, v0, v3, p1, v2}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Ljavax/naming/directory/SearchControls;Ljavax/naming/ldap/LdapContext;Lorg/apache/ldap/server/db/SearchResultFilter;)V

    .line 430
    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/List;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Lookup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 299
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Lookup;)V

    .line 301
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Lookup;->getReturnValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    if-nez p1, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    .line 308
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Lookup;->getContextStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/ldap/LdapContext;

    .line 309
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Lookup;->getName()Ljavax/naming/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ldap/server/authz/AuthorizationService;->protectLookUp(Ljavax/naming/ldap/LdapContext;Ljavax/naming/Name;)V

    .line 310
    invoke-virtual {p2, p1}, Lorg/apache/ldap/server/invocation/Lookup;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/LookupWithAttrIds;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 316
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/LookupWithAttrIds;)V

    .line 318
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->getReturnValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    if-nez p1, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    .line 325
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->getContextStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/ldap/LdapContext;

    .line 326
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->getName()Ljavax/naming/Name;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ldap/server/authz/AuthorizationService;->protectLookUp(Ljavax/naming/ldap/LdapContext;Ljavax/naming/Name;)V

    .line 327
    invoke-virtual {p2, p1}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Modify;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 170
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Modify;->getName()Ljavax/naming/Name;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/ldap/server/authz/AuthorizationService;->protectModifyAlterations(Lorg/apache/ldap/server/invocation/Invocation;Ljavax/naming/Name;)V

    .line 171
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyMany;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 183
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/ModifyMany;->getName()Ljavax/naming/Name;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/ldap/server/authz/AuthorizationService;->protectModifyAlterations(Lorg/apache/ldap/server/invocation/Invocation;Ljavax/naming/Name;)V

    .line 184
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyRN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 240
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/ModifyRN;->getName()Ljavax/naming/Name;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/ldap/server/authz/AuthorizationService;->protectDnAlterations(Lorg/apache/ldap/server/invocation/Invocation;Ljavax/naming/Name;)V

    .line 241
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Move;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 247
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Move;->getName()Ljavax/naming/Name;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/ldap/server/authz/AuthorizationService;->protectDnAlterations(Lorg/apache/ldap/server/invocation/Invocation;Ljavax/naming/Name;)V

    .line 248
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/MoveAndModifyRN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 254
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;->getName()Ljavax/naming/Name;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/ldap/server/authz/AuthorizationService;->protectDnAlterations(Lorg/apache/ldap/server/invocation/Invocation;Ljavax/naming/Name;)V

    .line 255
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Search;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 384
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Search;)V

    .line 386
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getControls()Ljavax/naming/directory/SearchControls;

    move-result-object p1

    .line 387
    invoke-virtual {p1}, Ljavax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getContextStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/ldap/LdapContext;

    .line 395
    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getReturnValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/NamingEnumeration;

    .line 396
    new-instance v2, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;

    .line 397
    new-instance v3, Lorg/apache/ldap/server/authz/AuthorizationService$1;

    invoke-direct {v3, p0}, Lorg/apache/ldap/server/authz/AuthorizationService$1;-><init>(Lorg/apache/ldap/server/authz/AuthorizationService;)V

    .line 396
    invoke-direct {v2, v1, p1, v0, v3}, Lorg/apache/ldap/server/db/ResultFilteringEnumeration;-><init>(Ljavax/naming/NamingEnumeration;Ljavax/naming/directory/SearchControls;Ljavax/naming/ldap/LdapContext;Lorg/apache/ldap/server/db/SearchResultFilter;)V

    .line 407
    invoke-virtual {p2, v2}, Lorg/apache/ldap/server/invocation/Search;->setReturnValue(Ljava/lang/Object;)V

    return-void
.end method
