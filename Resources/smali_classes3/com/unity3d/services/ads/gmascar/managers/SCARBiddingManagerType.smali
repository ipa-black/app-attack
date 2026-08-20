.class public final enum Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;
.super Ljava/lang/Enum;
.source "SCARBiddingManagerType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType$Constants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

.field public static final enum DISABLED:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

.field public static final enum EAGER:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

.field public static final enum HYBRID:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

.field public static final enum LAZY:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    const/4 v1, 0x0

    const-string v2, "dis"

    const-string v3, "DISABLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->DISABLED:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    .line 5
    new-instance v1, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    const/4 v2, 0x1

    const-string v3, "eag"

    const-string v4, "EAGER"

    invoke-direct {v1, v4, v2, v3}, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->EAGER:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    .line 6
    new-instance v2, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    const/4 v3, 0x2

    const-string v4, "laz"

    const-string v5, "LAZY"

    invoke-direct {v2, v5, v3, v4}, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->LAZY:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    .line 7
    new-instance v3, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    const/4 v4, 0x3

    const-string v5, "hyb"

    const-string v6, "HYBRID"

    invoke-direct {v3, v6, v4, v5}, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->HYBRID:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->$VALUES:[Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;
    .locals 3

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "laz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "hyb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "eag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "dis"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    .line 29
    sget-object p0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->DISABLED:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    return-object p0

    .line 26
    :cond_1
    sget-object p0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->HYBRID:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    return-object p0

    .line 24
    :cond_2
    sget-object p0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->LAZY:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    return-object p0

    .line 22
    :cond_3
    sget-object p0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->EAGER:Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1848e -> :sswitch_3
        0x1874b -> :sswitch_2
        0x19571 -> :sswitch_1
        0x1a1a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->$VALUES:[Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    invoke-virtual {v0}, [Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/managers/SCARBiddingManagerType;->name:Ljava/lang/String;

    return-object v0
.end method
