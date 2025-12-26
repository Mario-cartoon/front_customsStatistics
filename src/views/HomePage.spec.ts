// tests/basic.spec.ts
import { describe, it, expect } from 'vitest'

// Просто тестируем логику без компонентов
describe('Basic tests', () => {
  it('math works', () => {
    expect(1 + 1).toBe(2)
  })
  
  it('strings work', () => {
    expect('hello').toContain('ell')
  })
})