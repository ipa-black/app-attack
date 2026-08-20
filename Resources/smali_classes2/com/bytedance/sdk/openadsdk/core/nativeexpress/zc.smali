.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;
.super Ljava/lang/Object;
.source "ExpressRenderEventMonitor.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/HzH;
.implements Lcom/bytedance/sdk/component/adexpress/cJ/WAv;


# instance fields
.field private final CJ:Ljava/lang/String;

.field private final Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

.field private final ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private final cJ:Ljava/lang/String;

.field private fl:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    .line 36
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->cJ:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->CJ:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->cJ:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public CJ()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi()V

    return-void
.end method

.method public CJ(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_sub_render2_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->CJ(Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_sub_render_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->CJ(Ljava/lang/String;)V

    return-void
.end method

.method public Gm()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Gm()V

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->zc()V

    return-void
.end method

.method public Qhi()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v1, "ugen_render_start"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->fl(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v1, "ugen_sub_analysis_start"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->fl(Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(I)V
    .locals 2

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->fl:J

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_render2_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->ac(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_render_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->ac(Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(IILjava/lang/String;Z)V
    .locals 6

    if-nez p4, :cond_0

    .line 154
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const/4 v0, 0x1

    invoke-interface {p4, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Z)V

    :cond_0
    const/4 p4, 0x3

    if-ne p1, p4, :cond_1

    .line 157
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string p4, "dynamic_render2_error"

    invoke-interface {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->cJ(ILjava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string p4, "dynamic_render_error"

    invoke-interface {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->cJ(ILjava/lang/String;)V

    .line 162
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->cJ:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->CJ:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-string v0, "NDR"

    move v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/WAv;->Qhi(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method public Qhi(ILjava/lang/String;)V
    .locals 8

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(ILjava/lang/String;)V

    .line 70
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->cJ:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->CJ:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-string v2, "Web"

    move v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/WAv;->Qhi(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/hpZ;)V
    .locals 9

    .line 230
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/hpZ;->Qhi()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "ugen_sub_render_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->fl(Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "ugen_render_success"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Tgh(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/hpZ;->Qhi()I

    move-result v1

    const-string v2, "ugen_render_error"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->ac(ILjava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/hpZ;->Qhi()I

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/hpZ;->cJ()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->cJ:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->CJ:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->ac:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-string v3, "UGen"

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/WAv;->Qhi(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 237
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Z)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(I)V

    return-void
.end method

.method public ROR()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Z)V

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->ABk()V

    .line 177
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc$2;

    const-string v1, "native_success"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method

.method public Sf()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->iMK()V

    return-void
.end method

.method public Tgh()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->ac()V

    return-void
.end method

.method public Tgh(I)V
    .locals 2

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_render2_success"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->ROR(Ljava/lang/String;)V

    .line 134
    const-string p1, "dynamic2_render"

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_render_success"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->ROR(Ljava/lang/String;)V

    const-string p1, "dynamic_backup_native_render"

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Z)V

    .line 141
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc$1;

    const-string v1, "dynamic_success"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method

.method public WAv()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->cJ()V

    return-void
.end method

.method public ac()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v1, "ugen_sub_render_start"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->fl(Ljava/lang/String;)V

    return-void
.end method

.method public ac(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_sub_analysis2_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->CJ(Ljava/lang/String;)V

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_sub_analysis_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->CJ(Ljava/lang/String;)V

    return-void
.end method

.method public cJ()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v1, "ugen_sub_analysis_end"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->fl(Ljava/lang/String;)V

    return-void
.end method

.method public cJ(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_sub_analysis2_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->CJ(Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_sub_analysis_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->CJ(Ljava/lang/String;)V

    return-void
.end method

.method public fl()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->cJ()V

    return-void
.end method

.method public fl(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 120
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_sub_render2_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->CJ(Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    const-string v0, "dynamic_sub_render_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->CJ(Ljava/lang/String;)V

    return-void
.end method

.method public hm()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->pA()V

    return-void
.end method
