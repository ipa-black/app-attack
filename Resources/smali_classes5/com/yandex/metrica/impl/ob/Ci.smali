.class Lcom/yandex/metrica/impl/ob/Ci;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/t9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/t9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/t9;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Ci;-><init>(Lcom/yandex/metrica/impl/ob/t9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/t9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ci;->a:Lcom/yandex/metrica/impl/ob/t9;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/Ui;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ci;->a:Lcom/yandex/metrica/impl/ob/t9;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/If$b;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/If$b;-><init>()V

    const-string v2, "auto_inapp_collecting"

    .line 5
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 8
    iget v2, v1, Lcom/yandex/metrica/impl/ob/If$b;->a:I

    const-string v3, "send_frequency_seconds"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/yandex/metrica/impl/ob/If$b;->a:I

    .line 13
    iget v2, v1, Lcom/yandex/metrica/impl/ob/If$b;->b:I

    const-string v3, "first_collecting_inapp_max_age_seconds"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, v1, Lcom/yandex/metrica/impl/ob/If$b;->b:I

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/t9;->a(Lcom/yandex/metrica/impl/ob/If$b;)Lcom/yandex/metrica/impl/ob/i;

    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Ui;->a(Lcom/yandex/metrica/impl/ob/i;)V

    return-void
.end method
