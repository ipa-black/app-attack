.class Lio/bidmachine/nativead/AssetLoader;
.super Ljava/lang/Object;
.source "AssetLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DIR_NAME:Ljava/lang/String; = "native_cache_image"


# instance fields
.field private final adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

.field private final callback:Lio/bidmachine/AdProcessCallback;

.field private final nativeData:Lio/bidmachine/nativead/NativeData;

.field private final nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

.field private final pendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/nativead/NativeData;Lio/bidmachine/nativead/NativeMediaPrivateData;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    .line 44
    iput-object p2, p0, Lio/bidmachine/nativead/AssetLoader;->callback:Lio/bidmachine/AdProcessCallback;

    .line 45
    iput-object p3, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    .line 46
    iput-object p4, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/nativead/AssetLoader;)Lio/bidmachine/nativead/NativeMediaPrivateData;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/nativead/AssetLoader;Ljava/lang/Runnable;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/AssetLoader;->removePendingTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lio/bidmachine/nativead/AssetLoader;->retrieveAndSaveImageFrame(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private checkTasksCount()V
    .locals 1

    .line 216
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Lio/bidmachine/nativead/AssetLoader;->notifyNativeCallback()V

    :cond_0
    return-void
.end method

.method private createIconTask(Landroid/content/Context;Lio/bidmachine/ImageData;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-interface {p2}, Lio/bidmachine/ImageData;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 86
    :cond_1
    invoke-interface {p2}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 92
    :cond_2
    new-instance v0, Lio/bidmachine/nativead/AssetLoader$1;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/AssetLoader$1;-><init>(Lio/bidmachine/nativead/AssetLoader;)V

    .line 110
    iget-object v1, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    invoke-static {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->newBuilder(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->setOnCacheImageListener(Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->build()Lio/bidmachine/nativead/tasks/DownloadImageTask;

    move-result-object p1

    .line 110
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createImageTask(Landroid/content/Context;Lio/bidmachine/ImageData;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-interface {p2}, Lio/bidmachine/ImageData;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 122
    :cond_1
    invoke-interface {p2}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 128
    :cond_2
    new-instance v0, Lio/bidmachine/nativead/AssetLoader$2;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/AssetLoader$2;-><init>(Lio/bidmachine/nativead/AssetLoader;)V

    .line 146
    iget-object v1, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    invoke-static {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->newBuilder(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 147
    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->setCheckAspectRatio(Z)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;

    move-result-object p1

    .line 148
    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->setOnCacheImageListener(Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->build()Lio/bidmachine/nativead/tasks/DownloadImageTask;

    move-result-object p1

    .line 146
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createVastVideoTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 175
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance v0, Lio/bidmachine/nativead/AssetLoader$4;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/nativead/AssetLoader$4;-><init>(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;)V

    .line 194
    iget-object v1, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    new-instance v2, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-direct {v2, p1, v0, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;-><init>(Landroid/content/Context;Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createVideoTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 153
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    new-instance v0, Lio/bidmachine/nativead/AssetLoader$3;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/nativead/AssetLoader$3;-><init>(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;)V

    .line 171
    iget-object v1, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    new-instance v2, Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    invoke-direct {v2, p1, v0, p2}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;-><init>(Landroid/content/Context;Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isAssetsValid()Z
    .locals 2

    const/4 v0, 0x0

    .line 231
    :try_start_0
    invoke-direct {p0}, Lio/bidmachine/nativead/AssetLoader;->isIconValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lio/bidmachine/nativead/AssetLoader;->isImageValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lio/bidmachine/nativead/AssetLoader;->isVideoValid()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 233
    invoke-static {v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    return v0
.end method

.method private isIconValid()Z
    .locals 2

    .line 239
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v1, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 241
    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isImageValid()Z
    .locals 2

    .line 247
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 249
    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isVideoValid()Z
    .locals 2

    .line 255
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v1, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeData;->hasVideo()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized notifyNativeCallback()V
    .locals 2

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAdRequestParameters;->isValidateAssets()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/bidmachine/nativead/AssetLoader;->isAssetsValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->callback:Lio/bidmachine/AdProcessCallback;

    const-string v1, "Native assets are invalid"

    invoke-static {v1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->callback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removePendingTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 212
    invoke-direct {p0}, Lio/bidmachine/nativead/AssetLoader;->checkTasksCount()V

    return-void
.end method

.method private retrieveAndSaveImageFrame(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeData;->getMainImage()Lio/bidmachine/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 204
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    .line 205
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    const-string v1, "native_cache_image"

    invoke-static {p1, p2, v1}, Lio/bidmachine/core/Utils;->retrieveAndSaveFrame(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setImageUri(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method private startDownloadTask(Landroid/content/Context;)V
    .locals 4

    .line 55
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeData;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v1}, Lio/bidmachine/nativead/NativeData;->getVideoAdm()Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v3, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v2}, Lio/bidmachine/nativead/NativeData;->getIcon()Lio/bidmachine/ImageData;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lio/bidmachine/nativead/AssetLoader;->createIconTask(Landroid/content/Context;Lio/bidmachine/ImageData;)V

    .line 60
    :cond_0
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v3, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v2}, Lio/bidmachine/nativead/NativeData;->getMainImage()Lio/bidmachine/ImageData;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lio/bidmachine/nativead/AssetLoader;->createImageTask(Landroid/content/Context;Lio/bidmachine/ImageData;)V

    .line 63
    :cond_1
    iget-object v2, p0, Lio/bidmachine/nativead/AssetLoader;->adRequestParameters:Lio/bidmachine/nativead/NativeAdRequestParameters;

    sget-object v3, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    invoke-direct {p0, p1, v0}, Lio/bidmachine/nativead/AssetLoader;->createVideoTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    invoke-direct {p0, p1, v1}, Lio/bidmachine/nativead/AssetLoader;->createVastVideoTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    :cond_3
    :goto_0
    iget-object p1, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    invoke-direct {p0}, Lio/bidmachine/nativead/AssetLoader;->checkTasksCount()V

    goto :goto_2

    .line 73
    :cond_4
    iget-object p1, p0, Lio/bidmachine/nativead/AssetLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 74
    invoke-static {}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->getInstance()Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method downloadNativeAdsImages(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/AssetLoader;->startDownloadTask(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lio/bidmachine/nativead/AssetLoader;->checkTasksCount()V

    return-void
.end method
