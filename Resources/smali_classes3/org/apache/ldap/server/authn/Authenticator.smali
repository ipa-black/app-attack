.class public interface abstract Lorg/apache/ldap/server/authn/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# virtual methods
.method public abstract authenticate(Lorg/apache/ldap/server/jndi/ServerContext;)Lorg/apache/ldap/server/authn/LdapPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getAuthenticatorConfig()Lorg/apache/ldap/server/authn/AuthenticatorConfig;
.end method

.method public abstract getAuthenticatorType()Ljava/lang/String;
.end method

.method public abstract init(Lorg/apache/ldap/server/authn/AuthenticatorConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
