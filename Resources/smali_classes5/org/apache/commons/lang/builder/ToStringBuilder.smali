.class public Lorg/apache/commons/lang/builder/ToStringBuilder;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"


# static fields
.field private static defaultStyle:Lorg/apache/commons/lang/builder/ToStringStyle;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final object:Ljava/lang/Object;

.field private final style:Lorg/apache/commons/lang/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 236
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getDefaultStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)V
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 278
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getDefaultStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    .line 281
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 283
    :cond_1
    iput-object p3, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    .line 284
    iput-object p2, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 285
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->object:Ljava/lang/Object;

    .line 287
    invoke-virtual {p2, p3, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void

    .line 275
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The object to create a toString for must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getDefaultStyle()Lorg/apache/commons/lang/builder/ToStringStyle;
    .locals 1

    .line 152
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 161
    invoke-static {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)Ljava/lang/String;
    .locals 0

    .line 170
    invoke-static {p0, p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 193
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setDefaultStyle(Lorg/apache/commons/lang/builder/ToStringStyle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 206
    sput-object p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-void

    .line 204
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The style must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public append(B)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 328
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(C)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 356
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 384
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(F)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 412
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(I)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 440
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(J)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 468
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 496
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;B)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 597
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 642
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 688
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 734
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 780
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 826
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 872
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 887
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;S)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 933
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 551
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 609
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[BZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 629
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 655
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[CZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 675
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 701
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[DZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 721
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 747
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[FZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 767
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 793
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[IZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 813
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 839
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[JZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 859
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 900
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 920
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 946
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[SZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 966
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 564
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[ZZ)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 584
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(S)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 524
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 300
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append([B)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 342
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([C)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 370
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([D)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 398
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([F)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 426
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([I)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 454
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([J)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 482
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 510
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append([S)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 538
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 314
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 1

    .line 979
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/ObjectUtils;->appendIdentityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public appendSuper(Ljava/lang/String;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 999
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public appendToString(Ljava/lang/String;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 1033
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1079
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .line 1044
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;
    .locals 1

    .line 1056
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1068
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 1069
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
