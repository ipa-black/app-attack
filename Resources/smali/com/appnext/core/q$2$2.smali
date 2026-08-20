.class final Lcom/appnext/core/q$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/q$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hR:Lcom/appnext/core/q$2;


# direct methods
.method constructor <init>(Lcom/appnext/core/q$2;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 114
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->c(Lcom/appnext/core/q;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->c(Lcom/appnext/core/q;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v2, v2, Lcom/appnext/core/q$2;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/appnext/core/q$2$2$1;

    invoke-direct {v2, p0}, Lcom/appnext/core/q$2$2$1;-><init>(Lcom/appnext/core/q$2$2;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/e$a;

    move-result-object v0

    iget-object v2, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v2, v2, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v2}, Lcom/appnext/core/q;->c(Lcom/appnext/core/q;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hP:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hP:Lcom/appnext/core/e$a;

    iget-object v2, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v2, v2, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v2}, Lcom/appnext/core/q;->c(Lcom/appnext/core/q;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v0, v1}, Lcom/appnext/core/q;->a(Lcom/appnext/core/q;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hO:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v1, v1, Lcom/appnext/core/q$2;->hO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/appnext/core/f;->be()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getWebview()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :pswitch_2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_4

    .line 155
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->a(Lcom/appnext/core/q;)Lcom/appnext/core/e;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->a(Lcom/appnext/core/q;)Lcom/appnext/core/e;

    move-result-object v1

    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getAppURL()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getMarketUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/appnext/core/q$2$2$2;

    invoke-direct {v6, p0}, Lcom/appnext/core/q$2$2$2;-><init>(Lcom/appnext/core/q$2$2;)V

    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    .line 174
    invoke-static {v0}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/q$a;->g()Lcom/appnext/core/p;

    move-result-object v0

    const-string v7, "resolve_timeout"

    invoke-virtual {v0, v7}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    .line 158
    invoke-virtual/range {v1 .. v8}, Lcom/appnext/core/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;J)V

    goto :goto_2

    .line 144
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v1, v1, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v1}, Lcom/appnext/core/q;->f(Lcom/appnext/core/q;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/appnext/core/ResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    const-string v1, "url"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v1, v1, Lcom/appnext/core/q$2;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v1, v1, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v1}, Lcom/appnext/core/q;->f(Lcom/appnext/core/q;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hP:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_5

    .line 150
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hP:Lcom/appnext/core/e$a;

    invoke-interface {v0, v4}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void

    .line 136
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hM:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;)Lcom/appnext/core/e$a;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hP:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_7

    .line 138
    iget-object v0, p0, Lcom/appnext/core/q$2$2;->hR:Lcom/appnext/core/q$2;

    iget-object v0, v0, Lcom/appnext/core/q$2;->hP:Lcom/appnext/core/e$a;

    invoke-interface {v0, v4}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
