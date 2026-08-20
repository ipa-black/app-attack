.class final Lorg/apache/ldap/server/authz/AuthorizationService$1;
.super Ljava/lang/Object;
.source "AuthorizationService.java"

# interfaces
.implements Lorg/apache/ldap/server/db/SearchResultFilter;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/authz/AuthorizationService;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/authz/AuthorizationService;)V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/authz/AuthorizationService$1;->this$0:Lorg/apache/ldap/server/authz/AuthorizationService;

    return-void
.end method


# virtual methods
.method public accept(Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/SearchResult;Ljavax/naming/directory/SearchControls;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 403
    iget-object p3, p0, Lorg/apache/ldap/server/authz/AuthorizationService$1;->this$0:Lorg/apache/ldap/server/authz/AuthorizationService;

    invoke-static {p3, p1, p2}, Lorg/apache/ldap/server/authz/AuthorizationService;->access$0(Lorg/apache/ldap/server/authz/AuthorizationService;Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/SearchResult;)Z

    move-result p1

    return p1
.end method
