.class public Lcom/yandex/metrica/impl/ob/tg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/jg;

.field private final b:Lcom/yandex/metrica/impl/ob/sg$a;

.field private final c:Lcom/yandex/metrica/impl/ob/hg;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/jg;Lcom/yandex/metrica/impl/ob/sg$a;Lcom/yandex/metrica/impl/ob/hg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/tg;->a:Lcom/yandex/metrica/impl/ob/jg;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/tg;->b:Lcom/yandex/metrica/impl/ob/sg$a;

    .line 4
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/tg;->c:Lcom/yandex/metrica/impl/ob/hg;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/dg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tg;->a:Lcom/yandex/metrica/impl/ob/jg;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/jg;->a(Lcom/yandex/metrica/impl/ob/dg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tg;->b:Lcom/yandex/metrica/impl/ob/sg$a;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/sg$a;->a(Lcom/yandex/metrica/impl/ob/dg;)V

    .line 4
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/tg;->c:Lcom/yandex/metrica/impl/ob/hg;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/hg;->a()V

    :cond_0
    return-void
.end method
