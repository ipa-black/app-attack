.class Lcom/yandex/metrica/impl/ob/el;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/sl;

.field private final b:Lcom/yandex/metrica/impl/ob/yl$a;

.field private final c:Lcom/yandex/metrica/impl/ob/tl;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/sl;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/sl;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/yl$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/yl$a;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/tl;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/tl;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/el;-><init>(Lcom/yandex/metrica/impl/ob/sl;Lcom/yandex/metrica/impl/ob/yl$a;Lcom/yandex/metrica/impl/ob/tl;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/sl;Lcom/yandex/metrica/impl/ob/yl$a;Lcom/yandex/metrica/impl/ob/tl;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/el;->a:Lcom/yandex/metrica/impl/ob/sl;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/el;->b:Lcom/yandex/metrica/impl/ob/yl$a;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/el;->c:Lcom/yandex/metrica/impl/ob/tl;

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/Hk;Z)Lcom/yandex/metrica/impl/ob/dl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 1
    new-instance p1, Lcom/yandex/metrica/impl/ob/dl;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/dl;-><init>()V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/el;->c:Lcom/yandex/metrica/impl/ob/tl;

    iget-object p5, p0, Lcom/yandex/metrica/impl/ob/el;->b:Lcom/yandex/metrica/impl/ob/yl$a;

    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v5, Lcom/yandex/metrica/impl/ob/yl;

    .line 29
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object p5

    invoke-direct {v5, p2, p5}, Lcom/yandex/metrica/impl/ob/yl;-><init>(Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/M0;)V

    .line 30
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/el;->a:Lcom/yandex/metrica/impl/ob/sl;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/tl;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/Hk;Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/yl;Lcom/yandex/metrica/impl/ob/sl;)Lcom/yandex/metrica/impl/ob/dl;

    move-result-object p1

    return-object p1
.end method
