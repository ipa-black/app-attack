.class public Lorg/apache/ldap/server/authn/AnonymousAuthenticator;
.super Lorg/apache/ldap/server/authn/AbstractAuthenticator;
.source "AnonymousAuthenticator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    const-string v0, "none"

    invoke-direct {p0, v0}, Lorg/apache/ldap/server/authn/AbstractAuthenticator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/ldap/server/jndi/ServerContext;)Lorg/apache/ldap/server/authn/LdapPrincipal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/apache/ldap/server/authn/AnonymousAuthenticator;->getAuthenticatorContext()Lorg/apache/ldap/server/authn/AuthenticatorContext;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ldap/server/authn/AuthenticatorContext;->getAllowAnonymous()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    sget-object p1, Lorg/apache/ldap/server/authn/LdapPrincipal;->ANONYMOUS:Lorg/apache/ldap/server/authn/LdapPrincipal;

    return-object p1

    .line 49
    :cond_0
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNoPermissionException;

    const-string v0, "Anonymous bind NOT permitted!"

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/exception/LdapNoPermissionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
