.class public Lio/bidmachine/nativead/NativeNetworkAdapter;
.super Ljava/lang/Object;
.source "NativeNetworkAdapter.java"

# interfaces
.implements Lio/bidmachine/nativead/NativeData;


# instance fields
.field private callToAction:Ljava/lang/String;

.field private clickUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private hasVideo:Z

.field private iconImageData:Lio/bidmachine/ImageData;

.field private isNetworkControlLoadingAssets:Z

.field private mainImageData:Lio/bidmachine/ImageData;

.field private rating:F

.field private title:Ljava/lang/String;

.field private videoAdm:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    iput v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->rating:F

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->isNetworkControlLoadingAssets:Z

    return-void
.end method


# virtual methods
.method public configureContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public configureMediaView(Lio/bidmachine/nativead/view/NativeMediaView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public createProviderView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->callToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lio/bidmachine/ImageData;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->iconImageData:Lio/bidmachine/ImageData;

    return-object v0
.end method

.method public getMainImage()Lio/bidmachine/ImageData;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->mainImageData:Lio/bidmachine/ImageData;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    .line 63
    iget v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->rating:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdm()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->videoAdm:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->hasVideo:Z

    return v0
.end method

.method public isNetworkControlLoadingAssets()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->isNetworkControlLoadingAssets:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 146
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerNative(Landroid/view/ViewGroup;Landroid/widget/ImageView;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/ImageView;",
            "Lio/bidmachine/nativead/view/NativeMediaView;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setCallToAction(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 57
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->callToAction:Ljava/lang/String;

    return-object p0
.end method

.method public setClickUrl(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 100
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->clickUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 47
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setHasVideo(Z)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 132
    iput-boolean p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->hasVideo:Z

    return-object p0
.end method

.method public setIcon(Lio/bidmachine/ImageData;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 78
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->iconImageData:Lio/bidmachine/ImageData;

    return-object p0
.end method

.method public setMainImage(Lio/bidmachine/ImageData;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 89
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->mainImageData:Lio/bidmachine/ImageData;

    return-object p0
.end method

.method public setNetworkControlLoadingAssets(Z)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 141
    iput-boolean p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->isNetworkControlLoadingAssets:Z

    return-object p0
.end method

.method public setRating(F)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 67
    iput p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->rating:F

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 37
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoAdm(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 122
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->videoAdm:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoUrl(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 111
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public unregisterNative()V
    .locals 0

    return-void
.end method
