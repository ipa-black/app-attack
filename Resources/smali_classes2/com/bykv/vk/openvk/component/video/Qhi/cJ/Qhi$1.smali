.class Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi$1;
.super Ljava/lang/Object;
.source "AbsTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;->Qhi(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;->fl:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/CJ/Tgh;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;->WAv:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ABk;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi$1;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi;)I

    :cond_0
    return-void
.end method
