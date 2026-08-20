.class public interface abstract Lorg/apache/ldap/common/message/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lorg/apache/ldap/common/Lockable;


# virtual methods
.method public abstract add(Lorg/apache/ldap/common/message/Control;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/MessageException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getControls()Ljava/util/Collection;
.end method

.method public abstract getMessageId()I
.end method

.method public abstract getType()Lorg/apache/ldap/common/message/MessageTypeEnum;
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract remove(Lorg/apache/ldap/common/message/Control;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/MessageException;
        }
    .end annotation
.end method
