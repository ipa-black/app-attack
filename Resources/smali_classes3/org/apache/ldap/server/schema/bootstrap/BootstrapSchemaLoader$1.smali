.class final Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader$1;
.super Ljava/lang/Object;
.source "BootstrapSchemaLoader.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader$1;->this$0:Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;

    return-void
.end method


# virtual methods
.method public schemaObjectProduced(Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader$1;->this$0:Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;

    invoke-interface {p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;->getType()Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    move-result-object p1

    invoke-static {v0, p1, p2, p3}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->access$0(Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
