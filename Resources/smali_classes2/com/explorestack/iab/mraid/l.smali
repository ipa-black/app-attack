.class public final enum Lcom/explorestack/iab/mraid/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/mraid/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/explorestack/iab/mraid/l;

.field public static final enum c:Lcom/explorestack/iab/mraid/l;

.field public static final enum d:Lcom/explorestack/iab/mraid/l;

.field public static final enum e:Lcom/explorestack/iab/mraid/l;

.field public static final enum f:Lcom/explorestack/iab/mraid/l;

.field public static final enum g:Lcom/explorestack/iab/mraid/l;

.field public static final enum h:Lcom/explorestack/iab/mraid/l;

.field public static final synthetic i:[Lcom/explorestack/iab/mraid/l;

.field public static final synthetic j:Z = true


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/explorestack/iab/mraid/l;

    const/4 v1, 0x0

    const/16 v2, 0x33

    const-string v3, "TopLeft"

    invoke-direct {v0, v3, v1, v2}, Lcom/explorestack/iab/mraid/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/iab/mraid/l;->b:Lcom/explorestack/iab/mraid/l;

    new-instance v1, Lcom/explorestack/iab/mraid/l;

    const/4 v2, 0x1

    const/16 v3, 0x31

    const-string v4, "TopCenter"

    invoke-direct {v1, v4, v2, v3}, Lcom/explorestack/iab/mraid/l;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/iab/mraid/l;->c:Lcom/explorestack/iab/mraid/l;

    new-instance v2, Lcom/explorestack/iab/mraid/l;

    const/4 v3, 0x2

    const/16 v4, 0x35

    const-string v5, "TopRight"

    invoke-direct {v2, v5, v3, v4}, Lcom/explorestack/iab/mraid/l;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/iab/mraid/l;->d:Lcom/explorestack/iab/mraid/l;

    new-instance v3, Lcom/explorestack/iab/mraid/l;

    const/4 v4, 0x3

    const/16 v5, 0x11

    const-string v6, "Center"

    invoke-direct {v3, v6, v4, v5}, Lcom/explorestack/iab/mraid/l;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/iab/mraid/l;->e:Lcom/explorestack/iab/mraid/l;

    new-instance v4, Lcom/explorestack/iab/mraid/l;

    const/4 v5, 0x4

    const/16 v6, 0x53

    const-string v7, "BottomLeft"

    invoke-direct {v4, v7, v5, v6}, Lcom/explorestack/iab/mraid/l;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/iab/mraid/l;->f:Lcom/explorestack/iab/mraid/l;

    new-instance v5, Lcom/explorestack/iab/mraid/l;

    const/4 v6, 0x5

    const/16 v7, 0x51

    const-string v8, "BottomCenter"

    invoke-direct {v5, v8, v6, v7}, Lcom/explorestack/iab/mraid/l;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/iab/mraid/l;->g:Lcom/explorestack/iab/mraid/l;

    new-instance v6, Lcom/explorestack/iab/mraid/l;

    const/4 v7, 0x6

    const/16 v8, 0x55

    const-string v9, "BottomRight"

    invoke-direct {v6, v9, v7, v8}, Lcom/explorestack/iab/mraid/l;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/iab/mraid/l;->h:Lcom/explorestack/iab/mraid/l;

    filled-new-array/range {v0 .. v6}, [Lcom/explorestack/iab/mraid/l;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/mraid/l;->i:[Lcom/explorestack/iab/mraid/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/explorestack/iab/mraid/l;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/explorestack/iab/mraid/l;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/mraid/l;->d:Lcom/explorestack/iab/mraid/l;

    invoke-static {p0, v0}, Lcom/explorestack/iab/mraid/l;->a(Ljava/lang/String;Lcom/explorestack/iab/mraid/l;)Lcom/explorestack/iab/mraid/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/explorestack/iab/mraid/l;)Lcom/explorestack/iab/mraid/l;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-boolean v0, Lcom/explorestack/iab/mraid/l;->j:Z

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "top-center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "bottom-center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "bottom-right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "bottom-left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "top-left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "top-right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    return-object p1

    :pswitch_0
    sget-object p0, Lcom/explorestack/iab/mraid/l;->c:Lcom/explorestack/iab/mraid/l;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/explorestack/iab/mraid/l;->g:Lcom/explorestack/iab/mraid/l;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/explorestack/iab/mraid/l;->h:Lcom/explorestack/iab/mraid/l;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/explorestack/iab/mraid/l;->f:Lcom/explorestack/iab/mraid/l;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/explorestack/iab/mraid/l;->b:Lcom/explorestack/iab/mraid/l;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/explorestack/iab/mraid/l;->d:Lcom/explorestack/iab/mraid/l;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/explorestack/iab/mraid/l;->e:Lcom/explorestack/iab/mraid/l;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_6
        -0x4e5f7c5c -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/mraid/l;
    .locals 1

    const-class v0, Lcom/explorestack/iab/mraid/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/mraid/l;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/mraid/l;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/mraid/l;->i:[Lcom/explorestack/iab/mraid/l;

    invoke-virtual {v0}, [Lcom/explorestack/iab/mraid/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/mraid/l;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/explorestack/iab/mraid/l;->a:I

    return v0
.end method
