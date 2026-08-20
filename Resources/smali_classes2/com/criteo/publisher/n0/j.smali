.class public abstract Lcom/criteo/publisher/n0/j;
.super Ljava/lang/Object;
.source "CustomAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    .line 28
    new-instance v0, Lcom/criteo/publisher/n0/f;

    invoke-direct {v0}, Lcom/criteo/publisher/n0/f;-><init>()V

    return-object v0
.end method
