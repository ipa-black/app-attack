.class final Lorg/apache/ldap/server/operational/OperationalAttributeService$1;
.super Ljava/lang/Object;
.source "OperationalAttributeService.java"

# interfaces
.implements Lorg/apache/ldap/server/db/SearchResultFilter;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/operational/OperationalAttributeService;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/operational/OperationalAttributeService;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService$1;->this$0:Lorg/apache/ldap/server/operational/OperationalAttributeService;

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

    .line 59
    invoke-virtual {p3}, Ljavax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lorg/apache/ldap/server/operational/OperationalAttributeService$1;->this$0:Lorg/apache/ldap/server/operational/OperationalAttributeService;

    invoke-virtual {p2}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/ldap/server/operational/OperationalAttributeService;->access$0(Lorg/apache/ldap/server/operational/OperationalAttributeService;Ljavax/naming/directory/Attributes;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
