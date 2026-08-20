.class public final Lcom/ironsource/sdk/controller/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/ironsource/sdk/controller/x$d$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/x$d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/o;->a:Lcom/ironsource/sdk/controller/x$d$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/sdk/controller/n;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/o;->a:Lcom/ironsource/sdk/controller/x$d$a;

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/ironsource/sdk/controller/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/sdk/controller/x$d$a;->a(ZLjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b(Lcom/ironsource/sdk/controller/n;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/o;->a:Lcom/ironsource/sdk/controller/x$d$a;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/ironsource/sdk/controller/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/sdk/controller/x$d$a;->a(ZLjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
