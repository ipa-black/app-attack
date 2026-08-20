.class Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;
.super Ljava/lang/Object;
.source "SupportReplayMediaPlayer.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/Qhi$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Qhi"
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)V

    return-void
.end method


# virtual methods
.method public CJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 202
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->CJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)I

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 109
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->Qhi(II)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->hm()V

    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 118
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;I)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 174
    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;II)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 160
    invoke-interface {v1, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;III)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 167
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;J)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 125
    invoke-interface {v1, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;JJ)V
    .locals 8

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 188
    invoke-interface/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 139
    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Z)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 146
    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/Qhi;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ac(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 153
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->ac(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 132
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->cJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;I)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 181
    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->cJ(Lcom/bykv/vk/openvk/component/video/api/Qhi;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fl(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;->CJ(Lcom/bytedance/sdk/openadsdk/core/video/ac/ac;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;

    .line 209
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/ac$cJ;->fl(Lcom/bykv/vk/openvk/component/video/api/Qhi;)V

    goto :goto_0

    :cond_0
    return-void
.end method
