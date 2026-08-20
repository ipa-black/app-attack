.class Lcom/adcolony/sdk/p0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/AdColonyCustomMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/p0;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/p0;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/p0$b;->a:Lcom/adcolony/sdk/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdColonyCustomMessage(Lcom/adcolony/sdk/AdColonyCustomMessage;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyCustomMessage;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)Lcom/adcolony/sdk/f1;

    move-result-object p1

    .line 2
    const-string v0, "event_type"

    invoke-static {p1, v0}, Lcom/adcolony/sdk/c0;->h(Lcom/adcolony/sdk/f1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "duration"

    invoke-static {p1, v1}, Lcom/adcolony/sdk/c0;->c(Lcom/adcolony/sdk/f1;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 4
    const-string v2, "replay"

    invoke-static {p1, v2}, Lcom/adcolony/sdk/c0;->b(Lcom/adcolony/sdk/f1;Ljava/lang/String;)Z

    move-result v2

    .line 5
    const-string v3, "skip_type"

    invoke-static {p1, v3}, Lcom/adcolony/sdk/c0;->h(Lcom/adcolony/sdk/f1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 6
    const-string v4, "asi"

    invoke-static {p1, v4}, Lcom/adcolony/sdk/c0;->h(Lcom/adcolony/sdk/f1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    const-string v4, "skip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 10
    iget-object p1, p0, Lcom/adcolony/sdk/p0$b;->a:Lcom/adcolony/sdk/p0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/adcolony/sdk/p0;->a(Lcom/adcolony/sdk/p0;Z)Z

    return-void

    :cond_0
    if-eqz v2, :cond_1

    .line 17
    const-string v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "first_quartile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 18
    const-string v2, "midpoint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "third_quartile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 19
    const-string v2, "complete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 20
    :cond_1
    new-instance v2, Lcom/adcolony/sdk/p0$b$a;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/adcolony/sdk/p0$b$a;-><init>(Lcom/adcolony/sdk/p0$b;Ljava/lang/String;Ljava/lang/String;F)V

    invoke-static {v2}, Lcom/adcolony/sdk/z0;->b(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
