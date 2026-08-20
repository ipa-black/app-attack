.class public Lcom/yandex/metrica/impl/ob/O;
.super Lcom/yandex/metrica/impl/ob/D1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/O$f;,
        Lcom/yandex/metrica/impl/ob/O$e;,
        Lcom/yandex/metrica/impl/ob/O$b;,
        Lcom/yandex/metrica/impl/ob/O$d;,
        Lcom/yandex/metrica/impl/ob/O$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/b9;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/b9;

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->d()Lcom/yandex/metrica/impl/ob/S7;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/b9;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/O;-><init>(Lcom/yandex/metrica/impl/ob/b9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/b9;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/D1;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/O;->a:Lcom/yandex/metrica/impl/ob/b9;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/O;)Lcom/yandex/metrica/impl/ob/b9;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/O;->a:Lcom/yandex/metrica/impl/ob/b9;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/Nd;)I
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/O;->a:Lcom/yandex/metrica/impl/ob/b9;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->b(J)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ob/D1$a;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/O$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/O$a;-><init>(Lcom/yandex/metrica/impl/ob/O;)V

    return-object v0
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/Nd;I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/O;->a:Lcom/yandex/metrica/impl/ob/b9;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b9;->e(J)Lcom/yandex/metrica/impl/ob/b9;

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Nd;->g()Lcom/yandex/metrica/impl/ob/Nd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Kd;->b()V

    return-void
.end method
