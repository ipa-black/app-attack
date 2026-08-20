.class public Lcom/yandex/metrica/impl/ob/za;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/ta<",
            "Lcom/yandex/metrica/impl/ob/Ud;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/ta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/ta<",
            "Lcom/yandex/metrica/impl/ob/v3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ua;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ua;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/za;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ua;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ua;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/fm;->c()Lcom/yandex/metrica/impl/ob/fm;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/yandex/metrica/impl/ob/ua;->c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;)Lcom/yandex/metrica/impl/ob/ta;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/za;->a:Lcom/yandex/metrica/impl/ob/ta;

    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/fm;->c()Lcom/yandex/metrica/impl/ob/fm;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/yandex/metrica/impl/ob/ua;->b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;)Lcom/yandex/metrica/impl/ob/ta;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/za;->b:Lcom/yandex/metrica/impl/ob/ta;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/za;->a:Lcom/yandex/metrica/impl/ob/ta;

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->k()Lcom/yandex/metrica/impl/ob/I1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r0;->a()Lcom/yandex/metrica/impl/ob/s0;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->l()Lcom/yandex/metrica/impl/ob/ra;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ta;->a(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/ra;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/za;->b:Lcom/yandex/metrica/impl/ob/ta;

    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->d()Lcom/yandex/metrica/impl/ob/I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r0;->a()Lcom/yandex/metrica/impl/ob/s0;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->l()Lcom/yandex/metrica/impl/ob/ra;

    move-result-object p1

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/ta;->a(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/ra;)V

    return-void
.end method
