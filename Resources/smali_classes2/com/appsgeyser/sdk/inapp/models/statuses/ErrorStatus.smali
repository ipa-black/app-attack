.class public Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus;
.super Ljava/lang/Object;
.source "ErrorStatus.java"

# interfaces
.implements Lcom/appsgeyser/sdk/inapp/models/statuses/Status;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$ConfigErrorStatus;,
        Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$BillingErrorStatus;
    }
.end annotation


# instance fields
.field private errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus;->errorMessage:Ljava/lang/String;

    return-void
.end method
