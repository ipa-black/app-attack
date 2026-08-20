.class public final Lcom/appodeal/ads/modules/common/internal/adtype/AppodealAdType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0004R\u0014\u0010\u0008\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0004R\u0014\u0010\u000c\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0004\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/adtype/AppodealAdType;",
        "",
        "",
        "None",
        "I",
        "InterstitialInt",
        "SkippableVideo",
        "Interstitial",
        "Banner",
        "BannerBottom",
        "BannerTop",
        "BannerLeft",
        "BannerRight",
        "BannerView",
        "RewardedVideo",
        "MRec",
        "Native",
        "All",
        "apd_internal"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final All:I = 0xfff

.field public static final Banner:I = 0x4

.field public static final BannerBottom:I = 0x8

.field public static final BannerLeft:I = 0x400

.field public static final BannerRight:I = 0x800

.field public static final BannerTop:I = 0x10

.field public static final BannerView:I = 0x40

.field public static final INSTANCE:Lcom/appodeal/ads/modules/common/internal/adtype/AppodealAdType;

.field public static final Interstitial:I = 0x3

.field public static final InterstitialInt:I = 0x1

.field public static final MRec:I = 0x100

.field public static final Native:I = 0x200

.field public static final None:I = 0x0

.field public static final RewardedVideo:I = 0x80

.field public static final SkippableVideo:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/modules/common/internal/adtype/AppodealAdType;

    invoke-direct {v0}, Lcom/appodeal/ads/modules/common/internal/adtype/AppodealAdType;-><init>()V

    sput-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AppodealAdType;->INSTANCE:Lcom/appodeal/ads/modules/common/internal/adtype/AppodealAdType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
