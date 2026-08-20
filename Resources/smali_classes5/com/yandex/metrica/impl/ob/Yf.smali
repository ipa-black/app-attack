.class public Lcom/yandex/metrica/impl/ob/Yf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/plugins/IPluginReporter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/plugins/PluginErrorDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/util/Collection<",
            "Lcom/yandex/metrica/plugins/StackTraceItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v2, "Error details"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Yf;->a:Lcom/yandex/metrica/impl/ob/Kn;

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Fn;

    const-string v2, "Error identifier"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Fn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Yf;->b:Lcom/yandex/metrica/impl/ob/Kn;

    .line 10
    new-instance v0, Lcom/yandex/metrica/impl/ob/En;

    const-string v1, "Stacktrace"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/En;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Yf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Yf;->a:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 2
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Yf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-virtual {p1}, Lcom/yandex/metrica/plugins/PluginErrorDetails;->getStacktrace()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/In;->b()Z

    move-result p1

    return p1
.end method

.method public reportError(Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Yf;->a:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Yf;->b:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public reportUnhandledException(Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Yf;->a:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method
