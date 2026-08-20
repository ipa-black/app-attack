.class public Lcom/yandex/metrica/impl/ob/Yi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/da;

.field private final b:Lcom/yandex/metrica/impl/ob/Zi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/da;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/da;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Zi;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Zi;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Yi;-><init>(Lcom/yandex/metrica/impl/ob/da;Lcom/yandex/metrica/impl/ob/Zi;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/da;Lcom/yandex/metrica/impl/ob/Zi;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Yi;->a:Lcom/yandex/metrica/impl/ob/da;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Yi;->b:Lcom/yandex/metrica/impl/ob/Zi;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Ui;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Yi;->a:Lcom/yandex/metrica/impl/ob/da;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/If$w;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/If$w;-><init>()V

    const-string v2, "ui_parsing"

    .line 5
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 8
    iget v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->a:I

    const-string v3, "too_long_text_bound"

    .line 9
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->a:I

    .line 11
    iget v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->b:I

    const-string v3, "truncated_text_bound"

    .line 12
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->b:I

    .line 14
    iget v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->c:I

    const-string v3, "max_visited_children_in_level"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->c:I

    const-string v2, "after_create_timeout"

    const/4 v3, 0x0

    .line 15
    invoke-static {p2, v2, v3}, Lcom/yandex/metrica/impl/ob/Tl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    .line 16
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v1, Lcom/yandex/metrica/impl/ob/If$w;->d:J

    .line 17
    invoke-static {v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->d:J

    .line 23
    iget-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->e:Z

    const-string v3, "relative_text_size_calculation"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->e:Z

    .line 28
    iget-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->f:Z

    const-string v3, "error_reporting"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->f:Z

    .line 29
    iget-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->g:Z

    const-string v3, "parsing_allowed_by_default"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yandex/metrica/impl/ob/If$w;->g:Z

    .line 33
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Yi;->b:Lcom/yandex/metrica/impl/ob/Zi;

    const-string v3, "filters"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/yandex/metrica/impl/ob/Zi;->a(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/If$y;

    move-result-object p2

    iput-object p2, v1, Lcom/yandex/metrica/impl/ob/If$w;->h:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 34
    :cond_0
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/da;->a(Lcom/yandex/metrica/impl/ob/If$w;)Lcom/yandex/metrica/impl/ob/wl;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Ui;->a(Lcom/yandex/metrica/impl/ob/wl;)V

    return-void
.end method
