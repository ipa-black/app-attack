.class Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;
.super Ljava/lang/Object;
.source "WebArbitrageBehavior.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 6

    .line 160
    const-string v0, "trigger onWindowFocusChanged: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Sf:Z

    if-nez v0, :cond_1

    .line 165
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;)V

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 167
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->hm:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    const/4 v4, 0x3

    invoke-static {p1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;ILjava/lang/String;I)V

    .line 169
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;J)J

    :cond_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Sf:Z

    :cond_2
    if-eqz p1, :cond_3

    .line 178
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;)V

    .line 179
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->MQ:Ljava/util/Map;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->WAv:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
