.class public Lorg/apache/ldap/common/util/ToStringBuilder;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"


# static fields
.field private static defaultStyle:Lorg/apache/ldap/common/util/ToStringStyle;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final object:Ljava/lang/Object;

.field private final style:Lorg/apache/ldap/common/util/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    sget-object v0, Lorg/apache/ldap/common/util/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

    sput-object v0, Lorg/apache/ldap/common/util/ToStringBuilder;->defaultStyle:Lorg/apache/ldap/common/util/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 196
    invoke-static {}, Lorg/apache/ldap/common/util/ToStringBuilder;->getDefaultStyle()Lorg/apache/ldap/common/util/ToStringStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/common/util/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;)V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ldap/common/util/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 230
    invoke-static {}, Lorg/apache/ldap/common/util/ToStringBuilder;->getDefaultStyle()Lorg/apache/ldap/common/util/ToStringStyle;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    .line 233
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 235
    :cond_1
    iput-object p3, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    .line 236
    iput-object p2, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    .line 237
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->object:Ljava/lang/Object;

    .line 239
    invoke-virtual {p2, p3, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public static getDefaultStyle()Lorg/apache/ldap/common/util/ToStringStyle;
    .locals 1

    .line 113
    sget-object v0, Lorg/apache/ldap/common/util/ToStringBuilder;->defaultStyle:Lorg/apache/ldap/common/util/ToStringStyle;

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-static {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;)Ljava/lang/String;
    .locals 0

    .line 131
    invoke-static {p0, p1}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setDefaultStyle(Lorg/apache/ldap/common/util/ToStringStyle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 167
    sput-object p0, Lorg/apache/ldap/common/util/ToStringBuilder;->defaultStyle:Lorg/apache/ldap/common/util/ToStringStyle;

    return-void

    .line 165
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The style must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public append(B)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 280
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(C)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 308
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(D)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 336
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(F)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 364
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(I)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 392
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(J)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 420
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 448
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;B)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 549
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 594
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 640
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 686
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 732
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 778
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 824
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 839
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/ldap/common/util/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;S)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 885
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 503
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 561
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[BZ)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 581
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/ldap/common/util/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 607
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[CZ)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 627
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/ldap/common/util/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 653
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[DZ)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 673
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/ldap/common/util/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 699
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[FZ)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 719
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/ldap/common/util/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 745
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[IZ)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 765
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/ldap/common/util/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 791
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[JZ)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 811
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/ldap/common/util/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 852
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;Z)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 872
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/ldap/common/util/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 898
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[SZ)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 918
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/ldap/common/util/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 516
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[ZZ)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    .line 536
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/ldap/common/util/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(S)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 476
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Z)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 252
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append([B)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 294
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([C)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 322
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([D)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 350
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([F)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 378
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([I)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 406
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([J)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 434
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 462
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append([S)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 490
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Z)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 266
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 1

    .line 932
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ldap/common/util/ObjectUtils;->appendIdentityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public appendSuper(Ljava/lang/String;)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 952
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public appendToString(Ljava/lang/String;)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 986
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 998
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .line 1007
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lorg/apache/ldap/common/util/ToStringStyle;
    .locals 1

    .line 1019
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1033
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1034
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ToStringBuilder;->getStyle()Lorg/apache/ldap/common/util/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ldap/common/util/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1036
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringBuilder;->style:Lorg/apache/ldap/common/util/ToStringStyle;

    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 1038
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
