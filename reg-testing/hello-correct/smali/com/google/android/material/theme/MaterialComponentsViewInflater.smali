.class public Lcom/google/android/material/theme/MaterialComponentsViewInflater;
.super Landroidx/appcompat/app/AppCompatViewInflater;
.source "MaterialComponentsViewInflater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
    .locals 1

    new-instance v0, Lcom/google/android/material/button/MaterialButton;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
