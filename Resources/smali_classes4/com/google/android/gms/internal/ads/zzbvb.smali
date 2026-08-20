.class public final synthetic Lcom/google/android/gms/internal/ads/zzbvb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcii;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvb;->zza:Lcom/google/android/gms/internal/ads/zzcig;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvb;->zza:Lcom/google/android/gms/internal/ads/zzcig;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbui;

    const-string v2, "Cannot get Javascript Engine"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbui;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcig;->zze(Ljava/lang/Throwable;)Z

    return-void
.end method
