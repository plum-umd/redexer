.class public interface abstract Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/GoogleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCameraMoveStartedListener"
.end annotation


# static fields
.field public static final REASON_API_ANIMATION:I = 0x2

.field public static final REASON_DEVELOPER_ANIMATION:I = 0x3

.field public static final REASON_GESTURE:I = 0x1


# virtual methods
.method public abstract onCameraMoveStarted(I)V
.end method
