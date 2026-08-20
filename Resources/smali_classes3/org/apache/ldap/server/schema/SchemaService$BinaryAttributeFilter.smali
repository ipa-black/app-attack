.class Lorg/apache/ldap/server/schema/SchemaService$BinaryAttributeFilter;
.super Ljava/lang/Object;
.source "SchemaService.java"

# interfaces
.implements Lorg/apache/ldap/server/db/SearchResultFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/schema/SchemaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinaryAttributeFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/schema/SchemaService;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/schema/SchemaService;)V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p1, p0, Lorg/apache/ldap/server/schema/SchemaService$BinaryAttributeFilter;->this$0:Lorg/apache/ldap/server/schema/SchemaService;

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

    .line 446
    iget-object p3, p0, Lorg/apache/ldap/server/schema/SchemaService$BinaryAttributeFilter;->this$0:Lorg/apache/ldap/server/schema/SchemaService;

    invoke-virtual {p2}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lorg/apache/ldap/server/schema/SchemaService;->access$0(Lorg/apache/ldap/server/schema/SchemaService;Ljavax/naming/ldap/LdapContext;Ljavax/naming/directory/Attributes;)V

    const/4 p1, 0x1

    return p1
.end method
