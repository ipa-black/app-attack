.class public Lorg/apache/ldap/common/message/AbstractMessage;
.super Lorg/apache/ldap/common/AbstractLockable;
.source "AbstractMessage.java"

# interfaces
.implements Lorg/apache/ldap/common/message/Message;


# instance fields
.field private final controls:Ljava/util/Map;

.field private final id:I

.field private final parameters:Ljava/util/Map;

.field private final type:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method protected constructor <init>(ILorg/apache/ldap/common/message/MessageTypeEnum;)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Z)V

    .line 56
    iput p1, p0, Lorg/apache/ldap/common/message/AbstractMessage;->id:I

    .line 57
    iput-object p2, p0, Lorg/apache/ldap/common/message/AbstractMessage;->type:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/AbstractMessage;->controls:Ljava/util/Map;

    .line 59
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/AbstractMessage;->parameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/ldap/common/message/Control;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/MessageException;
        }
    .end annotation

    .line 99
    const-string v0, "Attempt to add control to locked message envelope!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/AbstractMessage;->lockCheck(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lorg/apache/ldap/common/message/AbstractMessage;->controls:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/Control;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 184
    :cond_0
    instance-of v1, p1, Lorg/apache/ldap/common/message/Message;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 189
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/Message;

    .line 191
    invoke-interface {p1}, Lorg/apache/ldap/common/message/Message;->getMessageId()I

    move-result v1

    iget v3, p0, Lorg/apache/ldap/common/message/AbstractMessage;->id:I

    if-eq v1, v3, :cond_2

    return v2

    .line 196
    :cond_2
    invoke-interface {p1}, Lorg/apache/ldap/common/message/Message;->getType()Lorg/apache/ldap/common/message/MessageTypeEnum;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ldap/common/message/AbstractMessage;->type:Lorg/apache/ldap/common/message/MessageTypeEnum;

    if-eq v1, v3, :cond_3

    return v2

    .line 201
    :cond_3
    invoke-interface {p1}, Lorg/apache/ldap/common/message/Message;->getControls()Ljava/util/Collection;

    move-result-object p1

    .line 202
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v3, p0, Lorg/apache/ldap/common/message/AbstractMessage;->controls:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 207
    :cond_4
    iget-object v1, p0, Lorg/apache/ldap/common/message/AbstractMessage;->controls:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 208
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_6
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/ldap/common/message/AbstractMessage;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getControls()Ljava/util/Collection;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/ldap/common/message/AbstractMessage;->controls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/apache/ldap/common/message/AbstractMessage;->id:I

    return v0
.end method

.method public getType()Lorg/apache/ldap/common/message/MessageTypeEnum;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/ldap/common/message/AbstractMessage;->type:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/ldap/common/message/AbstractMessage;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lorg/apache/ldap/common/message/Control;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/MessageException;
        }
    .end annotation

    .line 114
    const-string v0, "Attempt to remove control from locked message envelope!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/AbstractMessage;->lockCheck(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lorg/apache/ldap/common/message/AbstractMessage;->controls:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/Control;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
