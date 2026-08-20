.class public Lorg/apache/kerberos/messages/value/AuthorizationData;
.super Ljava/lang/Object;
.source "AuthorizationData.java"


# instance fields
.field private _entries:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/AuthorizationData;->_entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/kerberos/messages/value/AuthorizationData;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/AuthorizationData;->_entries:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/kerberos/messages/value/AuthorizationData;->_entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public add(Lorg/apache/kerberos/messages/value/AuthorizationDataEntry;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/AuthorizationData;->_entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/AuthorizationData;->_entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
