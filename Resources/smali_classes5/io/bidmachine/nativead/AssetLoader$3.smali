.class Lio/bidmachine/nativead/AssetLoader$3;
.super Ljava/lang/Object;
.source "AssetLoader.java"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/AssetLoader;->createVideoTask(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/AssetLoader;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lio/bidmachine/nativead/AssetLoader$3;->this$0:Lio/bidmachine/nativead/AssetLoader;

    iput-object p2, p0, Lio/bidmachine/nativead/AssetLoader$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVideoTask;Landroid/net/Uri;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$3;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {v0}, Lio/bidmachine/nativead/AssetLoader;->access$000(Lio/bidmachine/nativead/AssetLoader;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVideoUri(Landroid/net/Uri;)V

    .line 162
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$3;->this$0:Lio/bidmachine/nativead/AssetLoader;

    iget-object v1, p0, Lio/bidmachine/nativead/AssetLoader$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, p2}, Lio/bidmachine/nativead/AssetLoader;->access$200(Lio/bidmachine/nativead/AssetLoader;Landroid/content/Context;Landroid/net/Uri;)V

    .line 163
    iget-object p2, p0, Lio/bidmachine/nativead/AssetLoader$3;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {p2, p1}, Lio/bidmachine/nativead/AssetLoader;->access$100(Lio/bidmachine/nativead/AssetLoader;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lio/bidmachine/nativead/AssetLoader$3;->this$0:Lio/bidmachine/nativead/AssetLoader;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/AssetLoader;->access$100(Lio/bidmachine/nativead/AssetLoader;Ljava/lang/Runnable;)V

    return-void
.end method
