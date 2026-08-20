.class public Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;
.super Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Qhi;
.source "VolleyResponseWrapper.java"


# instance fields
.field private ac:Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Tgh;)V
    .locals 5

    .line 21
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Qhi;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->Qhi:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ROR()Lcom/bytedance/sdk/component/cJ/Qhi/ROR;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->Qhi()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->Qhi:Ljava/util/List;

    new-instance v2, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/WAv$cJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->Qhi(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->cJ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/WAv$cJ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/Tgh;

    return-void
.end method


# virtual methods
.method public CJ()Ljava/io/InputStream;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->ac()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public Qhi()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v0

    return v0
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->Qhi(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/Qhi/cJ/WAv$cJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->Qhi(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/Qhi/cJ/WAv$cJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/WAv$cJ;->cJ:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public Tgh()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->Qhi(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ac()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/component/video/Qhi/cJ/WAv$cJ;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->Qhi:Ljava/util/List;

    return-object v0
.end method

.method public cJ()Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Sf()Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl/ROR;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Sf()Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "http/1.1"

    return-object v0
.end method
