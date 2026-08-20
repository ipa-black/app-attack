.class public Lcom/yandex/metrica/impl/ob/nh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/M0;
.implements Lcom/yandex/metrica/plugins/IPluginReporter;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/jh;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/yandex/metrica/impl/ob/M0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/nh;->a:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized a(Lcom/yandex/metrica/impl/ob/jh;)V
    .locals 1

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nh;->b:Lcom/yandex/metrica/impl/ob/M0;

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nh;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nh;->b:Lcom/yandex/metrica/impl/ob/M0;

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/jh;->a(Lcom/yandex/metrica/impl/ob/M0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Pf;->a()Lcom/yandex/metrica/impl/ob/Pf;

    move-result-object v0

    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/Pf;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Of;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/nh;->b:Lcom/yandex/metrica/impl/ob/M0;

    .line 2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/nh;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/jh;

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/nh;->b:Lcom/yandex/metrica/impl/ob/M0;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/jh;->a(Lcom/yandex/metrica/impl/ob/M0;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/nh;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/H6;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$c;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/nh$c;-><init>(Lcom/yandex/metrica/impl/ob/nh;Lcom/yandex/metrica/impl/ob/H6;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/w6;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$n;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/nh$n;-><init>(Lcom/yandex/metrica/impl/ob/nh;Lcom/yandex/metrica/impl/ob/w6;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$w;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/nh$w;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$v;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/nh$v;-><init>(Lcom/yandex/metrica/impl/ob/nh;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$x;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/nh$x;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/nh$a;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public getPluginExtension()Lcom/yandex/metrica/plugins/IPluginReporter;
    .locals 0

    return-object p0
.end method

.method public pauseSession()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$k;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/nh$k;-><init>(Lcom/yandex/metrica/impl/ob/nh;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportAdRevenue(Lcom/yandex/metrica/AdRevenue;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$r;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/nh$r;-><init>(Lcom/yandex/metrica/impl/ob/nh;Lcom/yandex/metrica/AdRevenue;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportECommerce(Lcom/yandex/metrica/ecommerce/ECommerceEvent;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$p;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/nh$p;-><init>(Lcom/yandex/metrica/impl/ob/nh;Lcom/yandex/metrica/ecommerce/ECommerceEvent;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportError(Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$t;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/nh$t;-><init>(Lcom/yandex/metrica/impl/ob/nh;Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/yandex/metrica/impl/ob/nh$h;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$u;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/nh$u;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/plugins/PluginErrorDetails;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/nh$h;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/nh$g;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$d;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/nh$d;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/nh$e;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/nh$f;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportRevenue(Lcom/yandex/metrica/Revenue;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$o;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/nh$o;-><init>(Lcom/yandex/metrica/impl/ob/nh;Lcom/yandex/metrica/Revenue;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportUnhandledException(Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$s;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/nh$s;-><init>(Lcom/yandex/metrica/impl/ob/nh;Lcom/yandex/metrica/plugins/PluginErrorDetails;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$i;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/nh$i;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$m;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/nh$m;-><init>(Lcom/yandex/metrica/impl/ob/nh;Lcom/yandex/metrica/profile/UserProfile;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public resumeSession()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$j;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/nh$j;-><init>(Lcom/yandex/metrica/impl/ob/nh;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public sendEventsBuffer()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$b;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/nh$b;-><init>(Lcom/yandex/metrica/impl/ob/nh;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public setStatisticsSending(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$q;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/nh$q;-><init>(Lcom/yandex/metrica/impl/ob/nh;Z)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh$l;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/nh$l;-><init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nh;->a(Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method
