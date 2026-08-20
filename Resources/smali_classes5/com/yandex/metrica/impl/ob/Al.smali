.class Lcom/yandex/metrica/impl/ob/Al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/fl;

.field final synthetic d:Lcom/yandex/metrica/impl/ob/wl;

.field final synthetic e:Lcom/yandex/metrica/impl/ob/Bk;

.field final synthetic f:Z

.field final synthetic g:Lcom/yandex/metrica/impl/ob/Bl;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Bl;Ljava/lang/ref/WeakReference;Ljava/util/List;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Bk;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Al;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Al;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Al;->c:Lcom/yandex/metrica/impl/ob/fl;

    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Al;->d:Lcom/yandex/metrica/impl/ob/wl;

    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Al;->e:Lcom/yandex/metrica/impl/ob/Bk;

    iput-boolean p7, p0, Lcom/yandex/metrica/impl/ob/Al;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Al;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Bl;->b(Lcom/yandex/metrica/impl/ob/Bl;)Lcom/yandex/metrica/impl/ob/Bl$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Al;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    .line 11
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Bl;->a(Lcom/yandex/metrica/impl/ob/Bl;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Al;->c:Lcom/yandex/metrica/impl/ob/fl;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/vl;

    .line 14
    invoke-interface {v2, v4}, Lcom/yandex/metrica/impl/ob/vl;->a(Lcom/yandex/metrica/impl/ob/fl;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 18
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/vl;

    .line 19
    invoke-interface {v2, v4}, Lcom/yandex/metrica/impl/ob/vl;->a(Lcom/yandex/metrica/impl/ob/fl;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    :goto_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/Uk;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Uk;-><init>()V

    goto :goto_1

    .line 22
    :cond_4
    new-instance v1, Lcom/yandex/metrica/impl/ob/pk;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/pk;-><init>()V

    :goto_1
    move-object v7, v1

    .line 23
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Bl;->c(Lcom/yandex/metrica/impl/ob/Bl;)Lcom/yandex/metrica/impl/ob/lk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/lk;->a()J

    move-result-wide v8

    .line 24
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    invoke-static {v1, v0, v8, v9}, Lcom/yandex/metrica/impl/ob/Bl;->a(Lcom/yandex/metrica/impl/ob/Bl;Landroid/app/Activity;J)V

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Bl;->d(Lcom/yandex/metrica/impl/ob/Bl;)Lcom/yandex/metrica/impl/ob/el;

    move-result-object v1

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Al;->d:Lcom/yandex/metrica/impl/ob/wl;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Al;->e:Lcom/yandex/metrica/impl/ob/Bk;

    .line 30
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Bk;->c()Lcom/yandex/metrica/impl/ob/Ak;

    move-result-object v4

    iget-boolean v6, p0, Lcom/yandex/metrica/impl/ob/Al;->f:Z

    move-object v2, v0

    move-object v5, v7

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/el;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/Hk;Z)Lcom/yandex/metrica/impl/ob/dl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 40
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Al;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Al;->d:Lcom/yandex/metrica/impl/ob/wl;

    invoke-static {v2, v3, v1, v4}, Lcom/yandex/metrica/impl/ob/Bl;->a(Lcom/yandex/metrica/impl/ob/Bl;Ljava/util/List;Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ob/wl;)V

    const/4 v1, 0x0

    :goto_2
    move-object v3, v1

    if-eqz v3, :cond_5

    .line 43
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Al;->g:Lcom/yandex/metrica/impl/ob/Bl;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Al;->b:Ljava/util/List;

    .line 46
    invoke-interface {v7}, Lcom/yandex/metrica/impl/ob/Hk;->a()Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/Al;->c:Lcom/yandex/metrica/impl/ob/fl;

    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/Al;->e:Lcom/yandex/metrica/impl/ob/Bk;

    move-object v5, v0

    .line 47
    invoke-static/range {v1 .. v9}, Lcom/yandex/metrica/impl/ob/Bl;->a(Lcom/yandex/metrica/impl/ob/Bl;Ljava/util/List;Lcom/yandex/metrica/impl/ob/dl;Ljava/util/List;Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/Bk;J)V

    :cond_5
    return-void
.end method
