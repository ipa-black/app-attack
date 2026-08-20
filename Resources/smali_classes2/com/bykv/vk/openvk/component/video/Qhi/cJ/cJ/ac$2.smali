.class Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac$2;
.super Ljava/lang/Object;
.source "VideoProxyDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;->Qhi(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;I)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac$2;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

    iput p2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac$2;->Qhi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac$2;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;->cJ(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;)Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/fl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "video_http_header_t"

    const-string v2, "flag=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget v4, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac$2;->Qhi:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
