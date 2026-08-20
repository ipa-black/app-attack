.class public Lorg/apache/ldap/server/jndi/ServerLdapContext;
.super Lorg/apache/ldap/server/jndi/ServerDirContext;
.source "ServerLdapContext.java"

# interfaces
.implements Ljavax/naming/ldap/LdapContext;


# static fields
.field private static final EMPTY_CONTROLS:[Ljavax/naming/ldap/Control;


# instance fields
.field private connectControls:[Ljavax/naming/ldap/Control;

.field private requestControls:[Ljavax/naming/ldap/Control;

.field private responseControls:[Ljavax/naming/ldap/Control;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Ljavax/naming/ldap/Control;

    sput-object v0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->EMPTY_CONTROLS:[Ljavax/naming/ldap/Control;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/jndi/ServerDirContext;-><init>(Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;)V

    .line 42
    sget-object p1, Lorg/apache/ldap/server/jndi/ServerLdapContext;->EMPTY_CONTROLS:[Ljavax/naming/ldap/Control;

    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->requestControls:[Ljavax/naming/ldap/Control;

    .line 43
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->responseControls:[Ljavax/naming/ldap/Control;

    .line 44
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->connectControls:[Ljavax/naming/ldap/Control;

    return-void
.end method

.method constructor <init>(Lorg/apache/ldap/server/authn/LdapPrincipal;Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;Ljavax/naming/Name;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ldap/server/jndi/ServerDirContext;-><init>(Lorg/apache/ldap/server/authn/LdapPrincipal;Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;Ljavax/naming/Name;)V

    .line 42
    sget-object p1, Lorg/apache/ldap/server/jndi/ServerLdapContext;->EMPTY_CONTROLS:[Ljavax/naming/ldap/Control;

    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->requestControls:[Ljavax/naming/ldap/Control;

    .line 43
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->responseControls:[Ljavax/naming/ldap/Control;

    .line 44
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->connectControls:[Ljavax/naming/ldap/Control;

    return-void
.end method


# virtual methods
.method public extendedOperation(Ljavax/naming/ldap/ExtendedRequest;)Ljavax/naming/ldap/ExtendedResponse;
    .locals 0

    .line 81
    new-instance p1, Lorg/apache/ldap/common/NotImplementedException;

    invoke-direct {p1}, Lorg/apache/ldap/common/NotImplementedException;-><init>()V

    throw p1
.end method

.method public getConnectControls()[Ljavax/naming/ldap/Control;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->connectControls:[Ljavax/naming/ldap/Control;

    return-object v0
.end method

.method public getRequestControls()[Ljavax/naming/ldap/Control;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->requestControls:[Ljavax/naming/ldap/Control;

    return-object v0
.end method

.method public getResponseControls()[Ljavax/naming/ldap/Control;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->responseControls:[Ljavax/naming/ldap/Control;

    return-object v0
.end method

.method public newInstance([Ljavax/naming/ldap/Control;)Ljavax/naming/ldap/LdapContext;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/apache/ldap/server/jndi/ServerLdapContext;

    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerLdapContext;->getPrincipal()Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerLdapContext;->getNexusProxy()Lorg/apache/ldap/server/PartitionNexus;

    move-result-object v2

    .line 93
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerLdapContext;->getEnvironment()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerLdapContext;->getDn()Ljavax/naming/Name;

    move-result-object v4

    .line 92
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ldap/server/jndi/ServerLdapContext;-><init>(Lorg/apache/ldap/server/authn/LdapPrincipal;Lorg/apache/ldap/server/PartitionNexus;Ljava/util/Hashtable;Ljavax/naming/Name;)V

    .line 94
    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/jndi/ServerLdapContext;->setRequestControls([Ljavax/naming/ldap/Control;)V

    return-object v0
.end method

.method public reconnect([Ljavax/naming/ldap/Control;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->connectControls:[Ljavax/naming/ldap/Control;

    return-void
.end method

.method public setRequestControls([Ljavax/naming/ldap/Control;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lorg/apache/ldap/server/jndi/ServerLdapContext;->requestControls:[Ljavax/naming/ldap/Control;

    return-void
.end method
