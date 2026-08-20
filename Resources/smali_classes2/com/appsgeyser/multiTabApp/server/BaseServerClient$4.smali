.class Lcom/appsgeyser/multiTabApp/server/BaseServerClient$4;
.super Ljava/lang/Object;
.source "BaseServerClient.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/server/BaseServerClient;

.field final synthetic val$onErrorListener:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$4;->this$0:Lcom/appsgeyser/multiTabApp/server/BaseServerClient;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$4;->val$onErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$4;->val$onErrorListener:Lcom/android/volley/Response$ErrorListener;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method
