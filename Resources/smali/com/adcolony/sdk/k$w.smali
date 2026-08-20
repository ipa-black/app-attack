.class Lcom/adcolony/sdk/k$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/k;->a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/k;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/h0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    invoke-virtual {v0}, Lcom/adcolony/sdk/k;->q()Lcom/adcolony/sdk/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/g0;->a()Lcom/adcolony/sdk/s0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    invoke-static {v1}, Lcom/adcolony/sdk/k;->h(Lcom/adcolony/sdk/k;)Lcom/adcolony/sdk/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/f;->a(Z)V

    .line 3
    iget-object v1, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    invoke-static {v1}, Lcom/adcolony/sdk/k;->p(Lcom/adcolony/sdk/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/adcolony/sdk/c0;->b()Lcom/adcolony/sdk/f1;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/adcolony/sdk/c0;->b()Lcom/adcolony/sdk/f1;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/adcolony/sdk/z0;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_version"

    invoke-static {v3, v5, v4}, Lcom/adcolony/sdk/c0;->a(Lcom/adcolony/sdk/f1;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    const-string v4, "app_bundle_info"

    invoke-static {v1, v4, v3}, Lcom/adcolony/sdk/c0;->a(Lcom/adcolony/sdk/f1;Ljava/lang/String;Lcom/adcolony/sdk/f1;)Z

    .line 8
    new-instance v3, Lcom/adcolony/sdk/h0;

    const-string v4, "AdColony.on_update"

    invoke-direct {v3, v4, v2, v1}, Lcom/adcolony/sdk/h0;-><init>(Ljava/lang/String;ILcom/adcolony/sdk/f1;)V

    invoke-virtual {v3}, Lcom/adcolony/sdk/h0;->c()V

    .line 9
    iget-object v1, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/adcolony/sdk/k;->c(Lcom/adcolony/sdk/k;Z)Z

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    invoke-static {v1}, Lcom/adcolony/sdk/k;->q(Lcom/adcolony/sdk/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Lcom/adcolony/sdk/h0;

    const-string v3, "AdColony.on_install"

    invoke-direct {v1, v3, v2}, Lcom/adcolony/sdk/h0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/h0;->c()V

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/adcolony/sdk/h0;->a()Lcom/adcolony/sdk/f1;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 16
    const-string v1, "app_session_id"

    invoke-static {p1, v1}, Lcom/adcolony/sdk/c0;->h(Lcom/adcolony/sdk/f1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/s0;->f(Ljava/lang/String;)V

    .line 19
    :cond_2
    invoke-static {}, Lcom/adcolony/sdk/AdColonyEventTracker;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-static {}, Lcom/adcolony/sdk/AdColonyEventTracker;->b()V

    .line 23
    :cond_3
    const-string v0, "base_download_threads"

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/f1;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 25
    iget-object v1, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    invoke-static {v1}, Lcom/adcolony/sdk/k;->r(Lcom/adcolony/sdk/k;)Lcom/adcolony/sdk/t;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/t;->a(I)V

    .line 27
    :cond_4
    const-string v0, "concurrent_requests"

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/f1;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 29
    iget-object v1, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    invoke-static {v1}, Lcom/adcolony/sdk/k;->r(Lcom/adcolony/sdk/k;)Lcom/adcolony/sdk/t;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/t;->b(I)V

    .line 31
    :cond_5
    const-string v0, "threads_keep_alive_time"

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/f1;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 33
    iget-object v1, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    invoke-static {v1}, Lcom/adcolony/sdk/k;->r(Lcom/adcolony/sdk/k;)Lcom/adcolony/sdk/t;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/t;->c(I)V

    .line 35
    :cond_6
    const-string v0, "thread_pool_scaling_factor"

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/f1;->h(Ljava/lang/String;)D

    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_7

    .line 37
    iget-object p1, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    invoke-static {p1}, Lcom/adcolony/sdk/k;->r(Lcom/adcolony/sdk/k;)Lcom/adcolony/sdk/t;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/adcolony/sdk/t;->a(D)V

    .line 39
    :cond_7
    iget-object p1, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    invoke-static {p1}, Lcom/adcolony/sdk/k;->s(Lcom/adcolony/sdk/k;)Lcom/adcolony/sdk/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/z;->b()V

    .line 41
    iget-object p1, p0, Lcom/adcolony/sdk/k$w;->a:Lcom/adcolony/sdk/k;

    invoke-static {p1}, Lcom/adcolony/sdk/k;->t(Lcom/adcolony/sdk/k;)V

    return-void
.end method
