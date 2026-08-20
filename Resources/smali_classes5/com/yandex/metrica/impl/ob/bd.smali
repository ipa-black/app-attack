.class public Lcom/yandex/metrica/impl/ob/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Vb;

.field private final b:Lcom/yandex/metrica/impl/ob/ad;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Vb;Lcom/yandex/metrica/impl/ob/ad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/Vb;

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/ad;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/pf$b;
    .locals 1

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/Vb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Vb;->b(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/Hc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Lcom/yandex/metrica/impl/ob/ad;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/ad;->a(Lcom/yandex/metrica/impl/ob/Hc;)Lcom/yandex/metrica/impl/ob/pf$b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
