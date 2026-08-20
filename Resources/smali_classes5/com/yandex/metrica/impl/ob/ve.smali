.class public Lcom/yandex/metrica/impl/ob/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ze;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/qf$d$a$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d$a$c;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->c:I

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    iput-object p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->d:Ljava/lang/String;

    :cond_1
    const/4 p1, 0x0

    .line 9
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/J1;->b(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/of;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 14
    :catchall_0
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p4, 0x1

    .line 15
    new-array p4, p4, [Lcom/yandex/metrica/impl/ob/of;

    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/J1;->b(Lorg/json/JSONObject;)Lcom/yandex/metrica/impl/ob/of;

    move-result-object p2

    aput-object p2, p4, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    :cond_2
    const/4 p2, 0x0

    :goto_0
    move-object p4, p2

    :goto_1
    if-eqz p4, :cond_3

    .line 16
    iput-object p4, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->a:[Lcom/yandex/metrica/impl/ob/of;

    .line 18
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 19
    new-array p1, p1, [Lcom/yandex/metrica/impl/ob/rf;

    .line 21
    :try_start_2
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/J1;->a(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/rf;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 23
    :catchall_2
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->b:[Lcom/yandex/metrica/impl/ob/rf;

    :cond_4
    return-object v0
.end method
