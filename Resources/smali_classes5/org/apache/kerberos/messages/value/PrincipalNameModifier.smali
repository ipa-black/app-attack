.class public Lorg/apache/kerberos/messages/value/PrincipalNameModifier;
.super Ljava/lang/Object;
.source "PrincipalNameModifier.java"


# static fields
.field private static final COMPONENT_SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field _components:Ljava/util/List;

.field _nameType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/PrincipalNameModifier;->_components:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/PrincipalNameModifier;->_components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPrincipalName()Lorg/apache/kerberos/messages/value/PrincipalName;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    iget-object v1, p0, Lorg/apache/kerberos/messages/value/PrincipalNameModifier;->_components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v1, Lorg/apache/kerberos/messages/value/PrincipalName;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/kerberos/messages/value/PrincipalNameModifier;->_nameType:I

    invoke-direct {v1, v0, v2}, Lorg/apache/kerberos/messages/value/PrincipalName;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public setType(I)V
    .locals 0

    .line 42
    iput p1, p0, Lorg/apache/kerberos/messages/value/PrincipalNameModifier;->_nameType:I

    return-void
.end method
