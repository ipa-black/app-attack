.class public abstract Lorg/apache/ldap/common/filter/AbstractExprNode;
.super Ljava/lang/Object;
.source "AbstractExprNode.java"

# interfaces
.implements Lorg/apache/ldap/common/filter/ExprNode;


# static fields
.field public static final AND:I = 0xa

.field public static final APPROXIMATE:I = 0x5

.field public static final ASSERTION:I = 0x8

.field public static final EQUALITY:I = 0x0

.field public static final EXTENSIBLE:I = 0x6

.field public static final GREATEREQ:I = 0x3

.field public static final LESSEQ:I = 0x4

.field public static final NOT:I = 0xb

.field public static final OR:I = 0x9

.field public static final PRESENCE:I = 0x1

.field public static final SCOPE:I = 0x7

.field public static final SUBSTRING:I = 0x2


# instance fields
.field private m_annotations:Ljava/util/Map;

.field private final m_assertionType:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lorg/apache/ldap/common/filter/AbstractExprNode;->m_assertionType:I

    packed-switch p1, :pswitch_data_0

    .line 135
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attribute value assertion type is undefined."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final getOperationString(I)Ljava/lang/String;
    .locals 1

    .line 202
    const-string v0, "="

    packed-switch p0, :pswitch_data_0

    .line 240
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attribute value assertion type is undefined."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :pswitch_0
    const-string v0, "extensible"

    goto :goto_0

    .line 207
    :pswitch_1
    const-string v0, "~="

    goto :goto_0

    .line 227
    :pswitch_2
    const-string v0, "<="

    goto :goto_0

    .line 222
    :pswitch_3
    const-string v0, ">="

    goto :goto_0

    .line 232
    :pswitch_4
    const-string v0, "=*"

    :goto_0
    :pswitch_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AbstractExprNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AbstractExprNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getAnnotations()Ljava/util/Map;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/apache/ldap/common/filter/AbstractExprNode;->m_annotations:Ljava/util/Map;

    return-object v0
.end method

.method public final getAssertionType()I
    .locals 1

    .line 187
    iget v0, p0, Lorg/apache/ldap/common/filter/AbstractExprNode;->m_assertionType:I

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AbstractExprNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ldap/common/filter/AbstractExprNode;->m_annotations:Ljava/util/Map;

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/AbstractExprNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
