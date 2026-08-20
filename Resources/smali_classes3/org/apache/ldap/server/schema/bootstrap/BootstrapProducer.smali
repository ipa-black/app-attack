.class public interface abstract Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;
.super Ljava/lang/Object;
.source "BootstrapProducer.java"


# virtual methods
.method public abstract getType()Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;
.end method

.method public abstract produce(Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
