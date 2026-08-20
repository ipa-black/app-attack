.class Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$7;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Eh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)V
    .locals 0

    .line 1174
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$7;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1178
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$7;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;)Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/hpZ;->ROR()V

    .line 1179
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$7;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;

    const/16 v1, 0xcf

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;I)I

    .line 1180
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH$7;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;->ac(Lcom/bykv/vk/openvk/component/video/Qhi/CJ/HzH;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
