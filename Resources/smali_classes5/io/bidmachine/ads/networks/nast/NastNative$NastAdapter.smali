.class final Lio/bidmachine/ads/networks/nast/NastNative$NastAdapter;
.super Lio/bidmachine/nativead/NativeNetworkAdapter;
.source "NastNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/nast/NastNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NastAdapter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lio/bidmachine/nativead/NativeNetworkAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/ads/networks/nast/NastNative$1;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lio/bidmachine/ads/networks/nast/NastNative$NastAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public hasVideo()Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/nast/NastNative$NastAdapter;->getVideoAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/nast/NastNative$NastAdapter;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
