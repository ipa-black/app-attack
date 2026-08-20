.class Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf$1;
.super Ljava/lang/Object;
.source "ProxyTask.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ$cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/Qhi;Ljava/io/File;Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf$cJ;Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk$Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;->ac:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ac:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 321
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;->CJ:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->CJ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 323
    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ABk:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->ABk:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 325
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ;->CJ()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;)Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;

    move-result-object p1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Sf;->ROR()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->Qhi(ZLjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 325
    monitor-exit v0

    throw p1
.end method
