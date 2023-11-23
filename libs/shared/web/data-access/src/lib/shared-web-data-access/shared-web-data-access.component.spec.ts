import { ComponentFixture, TestBed } from '@angular/core/testing';
import { SharedWebDataAccessComponent } from './shared-web-data-access.component';

describe('SharedWebDataAccessComponent', () => {
  let component: SharedWebDataAccessComponent;
  let fixture: ComponentFixture<SharedWebDataAccessComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [SharedWebDataAccessComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(SharedWebDataAccessComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
