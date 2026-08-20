.class final Lcom/ironsource/mediationsdk/P$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ironsource/mediationsdk/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/P$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/P$3;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/P$3;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auction waterfallString = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    const/16 p2, 0x3ed

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "errorCode"

    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v3, "duration"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [[Ljava/lang/Object;

    aput-object p3, v4, v2

    aput-object v3, v4, v1

    const/16 p3, 0xdad

    invoke-static {p1, p3, v4}, Lcom/ironsource/mediationsdk/P;->a(Lcom/ironsource/mediationsdk/P;I[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    sget-object p3, Lcom/ironsource/mediationsdk/P$a;->e:Lcom/ironsource/mediationsdk/P$a;

    sget-object v3, Lcom/ironsource/mediationsdk/P$a;->h:Lcom/ironsource/mediationsdk/P$a;

    invoke-virtual {p1, p3, v3}, Lcom/ironsource/mediationsdk/P;->a(Lcom/ironsource/mediationsdk/P$a;Lcom/ironsource/mediationsdk/P$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/P;->d:Lcom/ironsource/mediationsdk/b/b;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/b/b;->a(Lcom/ironsource/mediationsdk/b/b$a;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/j;->a()Lcom/ironsource/mediationsdk/j;

    move-result-object p1

    iget-object p3, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/P;->e:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v4, "No candidates available for auctioning"

    invoke-direct {v3, p2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p3, v3}, Lcom/ironsource/mediationsdk/j;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    new-array p3, v1, [[Ljava/lang/Object;

    aput-object p2, p3, v2

    const/16 p2, 0xc27

    invoke-static {p1, p2, p3}, Lcom/ironsource/mediationsdk/P;->a(Lcom/ironsource/mediationsdk/P;I[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    sget-object p2, Lcom/ironsource/mediationsdk/P$a;->b:Lcom/ironsource/mediationsdk/P$a;

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/P;->a(Lcom/ironsource/mediationsdk/P$a;)V

    return-void

    :cond_1
    const-string v0, "ext1"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    new-array v0, v1, [[Ljava/lang/Object;

    aput-object p3, v0, v2

    iget-object p3, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    const/16 v1, 0xdb6

    invoke-static {p3, v1, v0}, Lcom/ironsource/mediationsdk/P;->a(Lcom/ironsource/mediationsdk/P;I[[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/P;->j:Lcom/ironsource/mediationsdk/h;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    iget-object v0, p3, Lcom/ironsource/mediationsdk/P;->j:Lcom/ironsource/mediationsdk/h;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p3, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    iget-object v4, p3, Lcom/ironsource/mediationsdk/P;->k:Lcom/ironsource/mediationsdk/i;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    iget v5, p3, Lcom/ironsource/mediationsdk/P;->h:I

    iget-object p3, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    iget-object v6, p3, Lcom/ironsource/mediationsdk/P;->b:Lcom/ironsource/mediationsdk/IronSourceSegment;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/P$3$1;->a:Lcom/ironsource/mediationsdk/P$3;

    iget-object p3, p3, Lcom/ironsource/mediationsdk/P$3;->a:Lcom/ironsource/mediationsdk/P;

    invoke-static {p3}, Lcom/ironsource/mediationsdk/P;->a(Lcom/ironsource/mediationsdk/P;)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p3

    iput-object p3, v0, Lcom/ironsource/mediationsdk/h;->a:Lcom/ironsource/mediationsdk/ISBannerSize;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ironsource/mediationsdk/h;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/i;ILcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void

    :cond_2
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "mAuctionHandler is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method
