.class public final Lcom/appodeal/ads/x5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/x5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/x5$a;

.field public final b:Lcom/appodeal/ads/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/appodeal/ads/x5;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/x5;Lcom/appodeal/ads/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/appodeal/ads/x5$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/appodeal/ads/x5$a;-><init>(I)V

    iput-object p1, p0, Lcom/appodeal/ads/x5$c;->a:Lcom/appodeal/ads/x5$a;

    iput-object p2, p0, Lcom/appodeal/ads/x5$c;->b:Lcom/appodeal/ads/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/appodeal/ads/x5$c;->a:Lcom/appodeal/ads/x5$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-boolean v0, Lcom/appodeal/ads/r0;->l:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/appodeal/ads/n5;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 4
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 5
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const-string v2, "Refresh"

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    .line 7
    iget-object v0, v0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 8
    const-string v3, "skip: no running activities fund"

    invoke-static {v0, v2, v3}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    .line 10
    iget-object v2, v0, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    if-ne p0, v2, :cond_1

    .line 11
    iput-object v1, v0, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    :cond_1
    return-void

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    invoke-virtual {v3, v0}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;

    move-result-object v3

    iget-object v4, p0, Lcom/appodeal/ads/x5$c;->b:Lcom/appodeal/ads/u;

    invoke-virtual {v4}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v4

    check-cast v4, Lcom/appodeal/ads/z5;

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    .line 13
    iget-object v5, v5, Lcom/appodeal/ads/x5;->c:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 14
    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 15
    iget-object v5, v3, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    .line 16
    sget-object v6, Lcom/appodeal/ads/f0;->a:Lcom/appodeal/ads/f0;

    if-ne v5, v6, :cond_7

    iget-object v3, p0, Lcom/appodeal/ads/x5$c;->a:Lcom/appodeal/ads/x5$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Lcom/appodeal/ads/n5;->b()Landroid/app/Activity;

    move-result-object v3

    .line 18
    invoke-static {v3}, Lcom/appodeal/ads/utils/c;->a(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    .line 19
    iget-object v0, v0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 20
    const-string v1, "postponed: ads activity is visible"

    invoke-static {v0, v2, v1}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/appodeal/ads/x5;->m:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    .line 22
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_3
    iget-object v3, p0, Lcom/appodeal/ads/x5$c;->b:Lcom/appodeal/ads/u;

    invoke-virtual {v3}, Lcom/appodeal/ads/u;->e()Lcom/appodeal/ads/segments/g;

    move-result-object v3

    .line 23
    iget-object v3, v3, Lcom/appodeal/ads/segments/g;->b:Ljava/lang/String;

    .line 24
    iget-boolean v5, v4, Lcom/appodeal/ads/r;->u:Z

    if-nez v5, :cond_5

    .line 25
    iget-boolean v5, v4, Lcom/appodeal/ads/r;->v:Z

    if-nez v5, :cond_5

    .line 26
    iget-object v5, v4, Lcom/appodeal/ads/r;->q:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    .line 28
    iget-object v0, v0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 29
    const-string v3, "skip: current ad request hasn\'t any loaded ad"

    invoke-static {v0, v2, v3}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    .line 31
    iget-object v2, v0, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    if-ne p0, v2, :cond_8

    goto :goto_2

    .line 33
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    .line 34
    iget-object v3, v3, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 35
    const-string v5, "requesting render"

    invoke-static {v3, v2, v5}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    .line 37
    iget-object v3, v2, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    if-ne p0, v3, :cond_6

    .line 38
    iput-object v1, v2, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    .line 39
    :cond_6
    new-instance v1, Lcom/appodeal/ads/y5;

    iget-object v2, p0, Lcom/appodeal/ads/x5$c;->b:Lcom/appodeal/ads/u;

    invoke-virtual {v2}, Lcom/appodeal/ads/u;->e()Lcom/appodeal/ads/segments/g;

    move-result-object v2

    iget-object v3, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    invoke-virtual {v3, v0}, Lcom/appodeal/ads/x5;->b(Landroid/app/Activity;)Lcom/appodeal/ads/a;

    move-result-object v3

    .line 40
    iget-boolean v4, v4, Lcom/appodeal/ads/r;->h:Z

    const/4 v5, 0x0

    .line 41
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;ZZ)V

    iget-object v2, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    iget-object v3, p0, Lcom/appodeal/ads/x5$c;->b:Lcom/appodeal/ads/u;

    invoke-virtual {v2, v0, v1, v3}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;Lcom/appodeal/ads/u;)Z

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    .line 42
    iget-object v5, v0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 44
    iget-object v3, v3, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    .line 46
    iget-object v0, v0, Lcom/appodeal/ads/x5;->c:Landroid/view/View;

    .line 47
    filled-new-array {v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "skip: %s / %s / %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/appodeal/ads/x5$c;->c:Lcom/appodeal/ads/x5;

    .line 49
    iget-object v2, v0, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    if-ne p0, v2, :cond_8

    .line 32
    :goto_2
    iput-object v1, v0, Lcom/appodeal/ads/x5;->i:Lcom/appodeal/ads/x5$c;

    :cond_8
    :goto_3
    return-void
.end method
