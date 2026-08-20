.class final Lcom/appnext/core/d$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fZ:Lcom/appnext/core/d$1;


# direct methods
.method constructor <init>(Lcom/appnext/core/d$1;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 92
    const-string v0, "No Ads"

    :try_start_0
    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v1, v1, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v2, v2, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2}, Lcom/appnext/core/d;->a(Lcom/appnext/core/Ad;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v1, v1, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v2, v2, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2}, Lcom/appnext/core/d;->h(Lcom/appnext/core/Ad;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v1, v1, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v2, v2, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2}, Lcom/appnext/core/d;->i(Lcom/appnext/core/Ad;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v1, v1, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v2, v2, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 95
    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v1, v1, Lcom/appnext/core/d$1;->fW:Lcom/appnext/core/d$a;

    invoke-interface {v1, v0}, Lcom/appnext/core/d$a;->error(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v2, v2, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v3, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v3, v3, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v4, v4, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v2, v3, v4, v1}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v2, v2, Lcom/appnext/core/d$1;->fW:Lcom/appnext/core/d$a;

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v2, v2, Lcom/appnext/core/d$1;->fW:Lcom/appnext/core/d$a;

    invoke-interface {v2, v1}, Lcom/appnext/core/d$a;->a(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v1, v1, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v2, v2, Lcom/appnext/core/d$1;->val$placementID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appnext/core/d;->l(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v1, v1, Lcom/appnext/core/d$1;->fW:Lcom/appnext/core/d$a;

    if-eqz v1, :cond_4

    .line 109
    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v1, v1, Lcom/appnext/core/d$1;->fW:Lcom/appnext/core/d$a;

    invoke-interface {v1, v0}, Lcom/appnext/core/d$a;->error(Ljava/lang/String;)V

    .line 112
    :cond_4
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/appnext/core/f;->bd()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 113
    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v2, v1, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v3, v1, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v4, v1, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v5, v1, Lcom/appnext/core/d$1;->val$placementID:Ljava/lang/String;

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v6, v1, Lcom/appnext/core/d$1;->fW:Lcom/appnext/core/d$a;

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-boolean v7, v1, Lcom/appnext/core/d$1;->fX:Z

    invoke-static/range {v2 .. v7}, Lcom/appnext/core/d;->a(Lcom/appnext/core/d;Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V

    goto :goto_1

    .line 115
    :cond_5
    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v1, v1, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/appnext/core/f;->m(Landroid/content/Context;)V

    .line 117
    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v2, v1, Lcom/appnext/core/d$1;->fY:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v3, v1, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v4, v1, Lcom/appnext/core/d$1;->fV:Lcom/appnext/core/Ad;

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v5, v1, Lcom/appnext/core/d$1;->val$placementID:Ljava/lang/String;

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v6, v1, Lcom/appnext/core/d$1;->fW:Lcom/appnext/core/d$a;

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-boolean v7, v1, Lcom/appnext/core/d$1;->fX:Z

    invoke-static/range {v2 .. v7}, Lcom/appnext/core/d;->a(Lcom/appnext/core/d;Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 120
    :catchall_1
    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v1, v1, Lcom/appnext/core/d$1;->fW:Lcom/appnext/core/d$a;

    if-eqz v1, :cond_6

    .line 121
    iget-object v1, p0, Lcom/appnext/core/d$1$1;->fZ:Lcom/appnext/core/d$1;

    iget-object v1, v1, Lcom/appnext/core/d$1;->fW:Lcom/appnext/core/d$a;

    invoke-interface {v1, v0}, Lcom/appnext/core/d$a;->error(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
