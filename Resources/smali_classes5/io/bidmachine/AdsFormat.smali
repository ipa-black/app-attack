.class public final enum Lio/bidmachine/AdsFormat;
.super Ljava/lang/Enum;
.source "AdsFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdsFormat$AdsFormatMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/AdsFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/AdsFormat;

.field public static final enum Banner:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_300x250:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_320x50:Lio/bidmachine/AdsFormat;

.field public static final enum Banner_728x90:Lio/bidmachine/AdsFormat;

.field public static final enum Interstitial:Lio/bidmachine/AdsFormat;

.field public static final enum InterstitialStatic:Lio/bidmachine/AdsFormat;

.field public static final enum InterstitialVideo:Lio/bidmachine/AdsFormat;

.field public static final enum Native:Lio/bidmachine/AdsFormat;

.field public static final enum Rewarded:Lio/bidmachine/AdsFormat;

.field public static final enum RewardedStatic:Lio/bidmachine/AdsFormat;

.field public static final enum RewardedVideo:Lio/bidmachine/AdsFormat;

.field public static final enum RichMedia:Lio/bidmachine/AdsFormat;


# instance fields
.field private final matcher:Lio/bidmachine/AdsFormat$AdsFormatMatcher;

.field private final remoteName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lio/bidmachine/AdsFormat;

    new-instance v1, Lio/bidmachine/AdsFormat$1;

    sget-object v2, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {v1, v2}, Lio/bidmachine/AdsFormat$1;-><init>(Lio/bidmachine/AdsType;)V

    const-string v2, "Banner"

    const/4 v3, 0x0

    const-string v4, "banner"

    invoke-direct {v0, v2, v3, v4, v1}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v0, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    .line 24
    new-instance v1, Lio/bidmachine/AdsFormat;

    new-instance v2, Lio/bidmachine/AdsFormat$2;

    sget-object v3, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {v2, v3}, Lio/bidmachine/AdsFormat$2;-><init>(Lio/bidmachine/AdsType;)V

    const-string v3, "Banner_320x50"

    const/4 v4, 0x1

    const-string v5, "banner_320x50"

    invoke-direct {v1, v3, v4, v5, v2}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v1, Lio/bidmachine/AdsFormat;->Banner_320x50:Lio/bidmachine/AdsFormat;

    .line 33
    new-instance v2, Lio/bidmachine/AdsFormat;

    new-instance v3, Lio/bidmachine/AdsFormat$3;

    sget-object v4, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {v3, v4}, Lio/bidmachine/AdsFormat$3;-><init>(Lio/bidmachine/AdsType;)V

    const-string v4, "Banner_300x250"

    const/4 v5, 0x2

    const-string v6, "banner_300x250"

    invoke-direct {v2, v4, v5, v6, v3}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v2, Lio/bidmachine/AdsFormat;->Banner_300x250:Lio/bidmachine/AdsFormat;

    .line 42
    new-instance v3, Lio/bidmachine/AdsFormat;

    new-instance v4, Lio/bidmachine/AdsFormat$4;

    sget-object v5, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {v4, v5}, Lio/bidmachine/AdsFormat$4;-><init>(Lio/bidmachine/AdsType;)V

    const-string v5, "Banner_728x90"

    const/4 v6, 0x3

    const-string v7, "banner_728x90"

    invoke-direct {v3, v5, v6, v7, v4}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v3, Lio/bidmachine/AdsFormat;->Banner_728x90:Lio/bidmachine/AdsFormat;

    .line 51
    new-instance v4, Lio/bidmachine/AdsFormat;

    new-instance v5, Lio/bidmachine/AdsFormat$5;

    sget-object v6, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    invoke-direct {v5, v6}, Lio/bidmachine/AdsFormat$5;-><init>(Lio/bidmachine/AdsType;)V

    const-string v6, "Interstitial"

    const/4 v7, 0x4

    const-string v8, "interstitial"

    invoke-direct {v4, v6, v7, v8, v5}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v4, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    .line 59
    new-instance v5, Lio/bidmachine/AdsFormat;

    new-instance v6, Lio/bidmachine/AdsFormat$6;

    sget-object v7, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    invoke-direct {v6, v7}, Lio/bidmachine/AdsFormat$6;-><init>(Lio/bidmachine/AdsType;)V

    const-string v7, "InterstitialVideo"

    const/4 v8, 0x5

    const-string v9, "interstitial_video"

    invoke-direct {v5, v7, v8, v9, v6}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v5, Lio/bidmachine/AdsFormat;->InterstitialVideo:Lio/bidmachine/AdsFormat;

    .line 67
    new-instance v6, Lio/bidmachine/AdsFormat;

    new-instance v7, Lio/bidmachine/AdsFormat$7;

    sget-object v8, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    invoke-direct {v7, v8}, Lio/bidmachine/AdsFormat$7;-><init>(Lio/bidmachine/AdsType;)V

    const-string v8, "InterstitialStatic"

    const/4 v9, 0x6

    const-string v10, "interstitial_static"

    invoke-direct {v6, v8, v9, v10, v7}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v6, Lio/bidmachine/AdsFormat;->InterstitialStatic:Lio/bidmachine/AdsFormat;

    .line 75
    new-instance v7, Lio/bidmachine/AdsFormat;

    new-instance v8, Lio/bidmachine/AdsFormat$8;

    sget-object v9, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    invoke-direct {v8, v9}, Lio/bidmachine/AdsFormat$8;-><init>(Lio/bidmachine/AdsType;)V

    const-string v9, "Rewarded"

    const/4 v10, 0x7

    const-string v11, "rewarded"

    invoke-direct {v7, v9, v10, v11, v8}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v7, Lio/bidmachine/AdsFormat;->Rewarded:Lio/bidmachine/AdsFormat;

    .line 83
    new-instance v8, Lio/bidmachine/AdsFormat;

    new-instance v9, Lio/bidmachine/AdsFormat$9;

    sget-object v10, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    invoke-direct {v9, v10}, Lio/bidmachine/AdsFormat$9;-><init>(Lio/bidmachine/AdsType;)V

    const-string v10, "RewardedVideo"

    const/16 v11, 0x8

    const-string v12, "rewarded_video"

    invoke-direct {v8, v10, v11, v12, v9}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v8, Lio/bidmachine/AdsFormat;->RewardedVideo:Lio/bidmachine/AdsFormat;

    .line 91
    new-instance v9, Lio/bidmachine/AdsFormat;

    new-instance v10, Lio/bidmachine/AdsFormat$10;

    sget-object v11, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    invoke-direct {v10, v11}, Lio/bidmachine/AdsFormat$10;-><init>(Lio/bidmachine/AdsType;)V

    const-string v11, "RewardedStatic"

    const/16 v12, 0x9

    const-string v13, "rewarded_static"

    invoke-direct {v9, v11, v12, v13, v10}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v9, Lio/bidmachine/AdsFormat;->RewardedStatic:Lio/bidmachine/AdsFormat;

    .line 99
    new-instance v10, Lio/bidmachine/AdsFormat;

    new-instance v11, Lio/bidmachine/AdsFormat$11;

    sget-object v12, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    invoke-direct {v11, v12}, Lio/bidmachine/AdsFormat$11;-><init>(Lio/bidmachine/AdsType;)V

    const-string v12, "Native"

    const/16 v13, 0xa

    const-string v14, "native"

    invoke-direct {v10, v12, v13, v14, v11}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v10, Lio/bidmachine/AdsFormat;->Native:Lio/bidmachine/AdsFormat;

    .line 107
    new-instance v11, Lio/bidmachine/AdsFormat;

    new-instance v12, Lio/bidmachine/AdsFormat$12;

    sget-object v13, Lio/bidmachine/AdsType;->RichMedia:Lio/bidmachine/AdsType;

    invoke-direct {v12, v13}, Lio/bidmachine/AdsFormat$12;-><init>(Lio/bidmachine/AdsType;)V

    const-string v13, "RichMedia"

    const/16 v14, 0xb

    const-string v15, "richmedia"

    invoke-direct {v11, v13, v14, v15, v12}, Lio/bidmachine/AdsFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V

    sput-object v11, Lio/bidmachine/AdsFormat;->RichMedia:Lio/bidmachine/AdsFormat;

    .line 14
    filled-new-array/range {v0 .. v11}, [Lio/bidmachine/AdsFormat;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AdsFormat;->$VALUES:[Lio/bidmachine/AdsFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/AdsFormat$AdsFormatMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/AdsFormat$AdsFormatMatcher;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput-object p3, p0, Lio/bidmachine/AdsFormat;->remoteName:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lio/bidmachine/AdsFormat;->matcher:Lio/bidmachine/AdsFormat$AdsFormatMatcher;

    return-void
.end method

.method static byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;
    .locals 5

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-static {}, Lio/bidmachine/AdsFormat;->values()[Lio/bidmachine/AdsFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 137
    iget-object v4, v3, Lio/bidmachine/AdsFormat;->remoteName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/AdsFormat;
    .locals 1

    .line 14
    const-class v0, Lio/bidmachine/AdsFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdsFormat;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/AdsFormat;
    .locals 1

    .line 14
    sget-object v0, Lio/bidmachine/AdsFormat;->$VALUES:[Lio/bidmachine/AdsFormat;

    invoke-virtual {v0}, [Lio/bidmachine/AdsFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/AdsFormat;

    return-object v0
.end method


# virtual methods
.method isMatch(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "TT;",
            "Lio/bidmachine/AdContentType;",
            ")Z"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lio/bidmachine/AdsFormat;->matcher:Lio/bidmachine/AdsFormat$AdsFormatMatcher;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/AdsFormat$AdsFormatMatcher;->isMatch(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z

    move-result p1

    return p1
.end method
