.class final Lcom/appnext/core/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic gG:Ljava/lang/String;

.field final synthetic gX:Ljava/lang/String;

.field final synthetic gY:Ljava/lang/String;

.field final synthetic gZ:Ljava/lang/String;

.field final synthetic ha:Ljava/lang/String;

.field final synthetic hb:Ljava/lang/String;

.field final synthetic hc:Ljava/lang/String;

.field final synthetic hd:Ljava/lang/String;

.field final synthetic he:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/appnext/core/f$2;->gX:Ljava/lang/String;

    iput-object p2, p0, Lcom/appnext/core/f$2;->gY:Ljava/lang/String;

    iput-object p3, p0, Lcom/appnext/core/f$2;->gG:Ljava/lang/String;

    iput-object p4, p0, Lcom/appnext/core/f$2;->gZ:Ljava/lang/String;

    iput-object p5, p0, Lcom/appnext/core/f$2;->ha:Ljava/lang/String;

    iput-object p6, p0, Lcom/appnext/core/f$2;->hb:Ljava/lang/String;

    iput-object p7, p0, Lcom/appnext/core/f$2;->hc:Ljava/lang/String;

    iput-object p8, p0, Lcom/appnext/core/f$2;->hd:Ljava/lang/String;

    iput-object p9, p0, Lcom/appnext/core/f$2;->he:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 581
    const-string v0, "UTF-8"

    const-string v1, "_"

    const-string v2, " "

    const-string v3, ""

    .line 584
    :try_start_0
    iget-object v4, p0, Lcom/appnext/core/f$2;->gX:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v4

    goto :goto_0

    :catchall_0
    move-object v9, v3

    .line 588
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/appnext/core/f$2;->gY:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v0

    goto :goto_1

    :catchall_1
    move-object v11, v3

    .line 591
    :goto_1
    iget-object v5, p0, Lcom/appnext/core/f$2;->gG:Ljava/lang/String;

    iget-object v6, p0, Lcom/appnext/core/f$2;->gZ:Ljava/lang/String;

    iget-object v8, p0, Lcom/appnext/core/f$2;->ha:Ljava/lang/String;

    iget-object v10, p0, Lcom/appnext/core/f$2;->hb:Ljava/lang/String;

    iget-object v12, p0, Lcom/appnext/core/f$2;->hc:Ljava/lang/String;

    iget-object v0, p0, Lcom/appnext/core/f$2;->hd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    move-object v13, v1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/appnext/core/f$2;->hd:Ljava/lang/String;

    move-object v13, v0

    :goto_2
    iget-object v0, p0, Lcom/appnext/core/f$2;->he:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v14, v1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/appnext/core/f$2;->he:Ljava/lang/String;

    move-object v14, v0

    :goto_3
    const-string v7, "100"

    filled-new-array/range {v5 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "https://admin.appnext.com/tp12.aspx?tid=%s&vid=%s&osid=%s&auid=%s&session_id=%s&pid=%s&ref=%s&ads_type=%s&bid=%s&cid=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 594
    :try_start_2
    invoke-static {v0, v1}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    .line 596
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
